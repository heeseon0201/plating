select * from tbl_plating;


use plating;

-- tbl_member Table Create SQL

drop table tbl_member;

CREATE TABLE tbl_member
(
    `member_id`        VARCHAR(20)    NOT NULL    COMMENT '회원 아이디', 
    `member_pwd`       VARCHAR(20)    NOT NULL    COMMENT '회원 비밀번호', 
    `member_nickname`  VARCHAR(20)    NOT NULL    COMMENT '회원 닉네임', 
    `member_name`      VARCHAR(20)    NOT NULL    COMMENT '회원 이름', 
    `member_email`     VARCHAR(50)    NOT NULL    COMMENT '회원 이메일', 
    `member_phone`     VARCHAR(20)    NOT NULL    COMMENT '회원 연락처', 
    `member_date`      DATETIME       NOT NULL    DEFAULT NOW() COMMENT '회원 가입일자', 
    `admin_yesno`      VARCHAR(1)     NOT NULL    DEFAULT 'N' COMMENT '관리자 여부', 
     PRIMARY KEY (member_id)
);

ALTER TABLE tbl_member COMMENT '회원 정보';


/*회원정보 인서트*/


select * from tbl_member;

/*플레이팅 테이블 생성*/
-- tbl_plating Table Create SQL

drop table tbl_plating;

CREATE TABLE tbl_plating
(
    `plating_seq`       INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '플레이팅 순번', 
    `plating_content`   TEXT            NULL        COMMENT '플레이팅 내용', 
    `plating_reg_date`  DATETIME        NOT NULL    DEFAULT NOW() COMMENT '등록 일자', 
    `member_id`         VARCHAR(20)     NOT NULL    COMMENT '등록자 아이디', 
    `like_count`        INT UNSIGNED    NOT NULL    DEFAULT 0 COMMENT '좋아요 수', 
    `view_count`        INT UNSIGNED    NOT NULL    DEFAULT 0 COMMENT '조회수', 
    `plating_pic`       VARCHAR(150)    NULL        COMMENT '플레이팅 사진', 
    `cook_name`         VARCHAR(50)     NULL        COMMENT '요리명', 
     PRIMARY KEY (plating_seq)
);

ALTER TABLE tbl_plating COMMENT '플레이팅 정보';

ALTER TABLE tbl_plating
    ADD CONSTRAINT FK_tbl_plating_member_id_tbl_member_member_id FOREIGN KEY (member_id)
        REFERENCES tbl_member (member_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
        
/*플레이팅 정보 저장*/
select * from tbl_plating;

/*플레이팅 좋아요 추가*/
update tbl_plating set like_count=like_count + 1 where plating_seq = 1;
/*플레이팅 좋아요 감소*/
update tbl_plating set like_count=like_count - 1 where plating_seq = 1;

-- tbl_reco_goods Table Create SQL

drop table tbl_reco_goods;

CREATE TABLE tbl_reco_goods
(
    `goods_seq`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '상품 순번', 
    `plating_seq`  INT UNSIGNED    NOT NULL    COMMENT '플레이팅 순번', 
    `reco_date`    DATETIME        NOT NULL    DEFAULT NOW() COMMENT '추천 일자', 
    `goods_name`   VARCHAR(50)     NULL        COMMENT '상품명', 
    `goods_pic1`   VARCHAR(150)    NULL        COMMENT '상품 사진1', 
    `goods_pic2`   VARCHAR(150)    NULL        COMMENT '상품 사진2', 
    `goods_pic3`  VARCHAR(150)    NULL        COMMENT '상품 사진3', 
     PRIMARY KEY (goods_seq)
);

ALTER TABLE tbl_reco_goods COMMENT '추천 상품';

ALTER TABLE tbl_reco_goods
    ADD CONSTRAINT FK_tbl_reco_goods_plating_seq_tbl_plating_plating_seq FOREIGN KEY (plating_seq)
        REFERENCES tbl_plating (plating_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;



-- tbl_my_rating Table Create SQL

drop table tbl_my_rating;

CREATE TABLE tbl_my_rating
(
    `my_pic_seq`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '사진 순번', 
    `my_pic_point`  INT             NULL        DEFAULT 0 COMMENT '사진 점수', 
    `my_reg_date`   DATETIME        NOT NULL    DEFAULT NOW() COMMENT '등록 일자', 
    `plating_seq`   INT UNSIGNED    NOT NULL    COMMENT '플레이팅 순번', 
     PRIMARY KEY (my_pic_seq)
);

ALTER TABLE tbl_my_rating COMMENT '플레이팅 점수';

ALTER TABLE tbl_my_rating
    ADD CONSTRAINT FK_tbl_my_rating_plating_seq_tbl_plating_plating_seq FOREIGN KEY (plating_seq)
        REFERENCES tbl_plating (plating_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

/*플레이팅 점수 테이블 저장*/

delete from tbl_my_rating;
select * from tbl_my_rating;
-- tbl_ingredient Table Create SQL

drop table tbl_ingredient;

CREATE TABLE tbl_ingredient
(
    `ingre_seq`       INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '재료 순번', 
    `ingre_name`      VARCHAR(20)     NULL        COMMENT '재료 명', 
    `ingre_content`   TEXT            NULL        COMMENT '재료 내용', 
    `ingre_reg_date`  DATETIME        NOT NULL    DEFAULT NOW() COMMENT '등록 일자', 
    `member_id`       VARCHAR(20)     NOT NULL    COMMENT '등록자 아이디', 
    `ingre_pic`       VARCHAR(150)    NULL        COMMENT '재료 이미지', 
     PRIMARY KEY (ingre_seq)
);

ALTER TABLE tbl_ingredient COMMENT '요리 재료 테이블';

ALTER TABLE tbl_ingredient
    ADD CONSTRAINT FK_tbl_ingredient_member_id_tbl_member_member_id FOREIGN KEY (member_id)
        REFERENCES tbl_member (member_id) ON DELETE RESTRICT ON UPDATE RESTRICT;



select * from tbl_ingredient;

/*별점조회를 위한 쿼리*/
SELECT t1.plating_seq, t1.plating_content, t1.plating_reg_date, t1.member_id, t1.like_count, t1.view_count, t1.plating_pic, t1.cook_name, 
    t2.member_id, t2.member_pwd, t2.member_nickname, t2.member_name, t2.member_email, t2.member_phone, t2.member_date, t2.admin_yesno, 
    t3.plating_seq, t3.my_pic_seq, t3.my_pic_point, t3.my_reg_date
FROM tbl_plating t1 
    INNER JOIN tbl_member t2 ON t1.member_id = t2.member_id
    INNER JOIN tbl_my_rating t3 ON t1.plating_seq = t3.plating_seq
WHERE t1.plating_seq = 1;

select * from tbl_plating where plating_seq = 1;

/*상품 사진 출력해주는 것*/
select goods_pic1, goods_pic2, goods_pic3
from tbl_plating t1 inner join tbl_reco_goods t2
on t1.plating_seq = t2.plating_seq
where t1.plating_seq = 1;

/*플레이팅 별점 별 출력*/
select A.plating_pic, B.my_pic_point
from (select plating_pic, B.plating_seq from tbl_plating A left join tbl_my_rating B on A.plating_seq = B.plating_seq) A INNER JOIN
(select A.plating_seq, my_pic_point from tbl_my_rating B left join tbl_plating A on A.plating_seq = B.plating_seq) B
ON A.plating_seq = B.plating_seq
ORDER BY B.my_pic_point desc;

commit;


