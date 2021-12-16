from flask import Blueprint, render_template, request, jsonify



import torch
import os
import numpy as np
import matplotlib.patches as patches
import matplotlib.pyplot as plt
from bs4 import BeautifulSoup
from PIL import Image
import torchvision
from torchvision import transforms, datasets, models
from torchvision.models.detection.faster_rcnn import FastRCNNPredictor
import time

bp = Blueprint('main', __name__, url_prefix='/')


@bp.route('/hello')
def hello_pybo():
    return 'Hello, Pybo!'


@bp.route('/')
def index():
    return 'Pybo index'

@bp.route('/upload')
def upload():
    return render_template('upload.html')

@bp.route('/result')
def result():
    return render_template('result.html')

@bp.route('/predict', methods=['POST'])
def predict():
    # 필요 함수 정의
    def make_prediction(model, img, threshold):
        model.eval()
        preds = model(img)
        for id in range(len(preds)):
            idx_list = []

            for idx, score in enumerate(preds[id]['scores']):
                if score > threshold:
                    idx_list.append(idx)

            preds[id]['boxes'] = preds[id]['boxes'][idx_list].cpu()  # cpu, gpu 할당 오류
            preds[id]['labels'] = preds[id]['labels'][idx_list].cpu()  # cpu, gpu 할당 오류
            preds[id]['scores'] = preds[id]['scores'][idx_list].cpu()  # cpu, gpu 할당 오류

        return preds

    def get_model_instance_segmentation(num_classes):

        model = torchvision.models.detection.fasterrcnn_resnet50_fpn(pretrained=True)
        in_features = model.roi_heads.box_predictor.cls_score.in_features
        model.roi_heads.box_predictor = FastRCNNPredictor(in_features, num_classes)

        return model

    # 파이토치 이미지 읽어오기
    file = request.files['file']
    img = Image.open(file).convert("RGB")

    # 파이토치 모델생성
    data_transform = transforms.Compose([  # transforms.Compose : list 내의 작업을 연달아 할 수 있게 호출하는 클래스
        transforms.ToTensor()  # ToTensor : numpy 이미지에서 torch 이미지로 변경
    ])
    model = get_model_instance_segmentation(26)
    device = torch.device('cuda') if torch.cuda.is_available() else torch.device('cpu')
    model.to(device)
    model = torch.load('hellopython/model/model_ingre_40_211216.pt', map_location=device)

    # 파이토치 모델 예측하기
     # 파일 열어준다.
    img = Image.open(file).convert("RGB")  # 이미지로 열어주고 RGB형태로 변환
    img = data_transform(img)  # 데이터를 넘파이 이미지에서 토치이미지로 변환

    with torch.no_grad():
        pred = make_prediction(model, [img.to(device)], 0.5)
    result = str(pred[0]['labels'][0]).split('(')[1].split(')')[0]


    return result