-- 在系统中注册的商品类目表，tbl_goods_category 表，比如 珠宝  手表 黄金 手机 玉石 玛瑙 翡翠 钻石 手链  钻戒 数码影音  百货  交通等等。

USE db_dream_go;

CREATE TABLE tbl_goods_item (
  `id`               BIGINT AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '系统中包含的商品类目表',
  `category_no`      VARCHAR(255)          NOT NULL DEFAULT ''
  COMMENT '商品所属大类类目的名字',
  `goods_no`         VARCHAR(255)          NOT NULL DEFAULT ''
  COMMENT '按照一定的规则生成的商品id，对外可显示，可',
  `goods_name`       VARCHAR(255)          NOT NULL DEFAULT ''
  COMMENT '商品自己的中文名或者英文名字',
  `goods_desc`       VARCHAR(4095)         NOT NULL DEFAULT ''
  COMMENT '商品描述',
  `goods_keywords`   VARCHAR(4095)         NOT NULL DEFAULT ''
  COMMENT '在商品录入时商品自定义的搜索关键词',
  `goods_img`        VARCHAR(4095)         NOT NULL DEFAULT ''
  COMMENT '商品主图img的地址',
  `goods_attribute`  VARCHAR(4095)         NOT NULL DEFAULT ''
  COMMENT '商品属性，不如大小，规则，可按关键字 固定格式罗列',
  `goods_popularity` INT UNSIGNED          NOT NULL DEFAULT 0
  COMMENT '商品的人气，比如点赞/like的数量',
  `period`           INT UNSIGNED          NOT NULL DEFAULT 0
  COMMENT '商品上架后对应的第几期，未上架期数可为0',
  `goods_price`      DECIMAL(18, 2)        NOT NULL DEFAULT 0.00
  COMMENT '商品价格',
  `total_times`      INT UNSIGNED          NOT NULL DEFAULT 0
  COMMENT '商品参与人数上限，也就是揭晓结果的人数上限',
  `used_times`       INT UNSIGNED          NOT NULL DEFAULT 0
  COMMENT '已经参与的人数或人气',
  `remaining_times`  INT UNSIGNED          NOT NULL DEFAULT 0
  COMMENT '剩余的人数或人气',
  `lucky_no`         VARCHAR(255)          NOT NULL DEFAULT ''
  COMMENT '本期商品的幸运数字',
  `goods_status`     TINYINT               NOT NULL DEFAULT 0
  COMMENT '商品状态，0新建,新建不一定上架对外显示，1表示上架，2表示下架，3表示已经开奖',
  `create_time`      DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time`      DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `lucky_time`       DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '揭晓时间',

  PRIMARY KEY (`id`),
  UNIQUE KEY (`category_no`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '商品类目表，id是主键';