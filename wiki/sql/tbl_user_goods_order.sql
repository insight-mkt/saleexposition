-- 用户订单表，tbl_user_goods_order 表，用户可多次参与同一个商品的手气，会获取多个幸运号，提高幸运概率。

USE db_dream_go;

CREATE TABLE tbl_user_goods_order (
  `id`            BIGINT UNSIGNED AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '用户下单的订单表',
  `user_id`       VARCHAR(255)                   NOT NULL DEFAULT '' COMMENT '对应用户的tbl_user_info表的user_id作为外键关联',
  `goods_no`      VARCHAR(255)                   NOT NULL DEFAULT '' COMMENT '商品的编号',
  `goods_period`  INT UNSIGNED                   NOT NULL DEFAULT 0
  COMMENT '商品的第几期',
  `order_no`      VARCHAR(255)                   NOT NULL DEFAULT '' COMMENT '本次订单编号',
  `order_amount`  BIGINT UNSIGNED                NOT NULL DEFAULT 0 COMMENT '用户的下单金额',
  `user_lucky_no` VARCHAR(255)                   NOT NULL DEFAULT '' COMMENT '用户本次下单时获取的幸运号',
  `order_status`  TINYINT                        NOT NULL DEFAULT 0  COMMENT '订单状态，0表示新建，1表示用户支付成功，2表示用户取消',
  `create_time`   DATETIME                       NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `update_time`   DATETIME                       NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单更新时间',
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '用户订单表，id是主键';