-- 在系统中注册的商品类目表，tbl_goods_category 表，比如 珠宝  手表 黄金 手机 玉石 玛瑙 翡翠 钻石 手链  钻戒 数码影音  百货  交通等等。

USE db_dream_go;

CREATE TABLE tbl_goods_category (
  `id`           BIGINT AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '系统中包含的商品类目表',
  `category_no`       VARCHAR(255)     NOT NULL DEFAULT '' COMMENT '按照一定的规则生成的商品id，对外可显示',
  `categroy_name`     VARCHAR(4095)    NOT NULL DEFAULT '' COMMENT '商品类目的中文名或者英文名字',
  `categroy_desc`     VARCHAR(4095)    NOT NULL DEFAULT '' COMMENT '商品类目的描述信息',
  `category_status`   TINYINT          NOT NULL DEFAULT 0  COMMENT '商品类目状态，0新建,新建不一定上架对外显示，1表示上架，2表示下架',
  `create_time`       DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址创建时间',
  `update_time`       DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`category_no`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '商品类目表，id是主键';