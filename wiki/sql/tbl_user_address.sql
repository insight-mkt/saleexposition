-- 在系统中注册的用户的收获地址表，tbl_user_address 表，一个用户最多可以有100个收获地址。

USE db_dream_go;

CREATE TABLE tbl_user_address (
  `id`           BIGINT AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '用户收获地址详细表主键，对外不可见',
  `user_id`         VARCHAR(255)       NOT NULL DEFAULT '' COMMENT '对应用户的tbl_user_info表的user_id作为外键关联',
  `user_country`    VARCHAR(4095)      NOT NULL DEFAULT '' COMMENT '用户地址所属国家',
  `user_province`   VARCHAR(4095)      NOT NULL DEFAULT '' COMMENT '用户地址所属省份或者州',
  `user_city`       VARCHAR(4095)      NOT NULL DEFAULT '' COMMENT '用户地址所属城市',
  `user_district`   VARCHAR(4095)      NOT NULL DEFAULT '' COMMENT '用户地址所属城区',
  `user_street`     VARCHAR(4095)      NOT NULL DEFAULT '' COMMENT '用户地址所属街道具体地址',
  `user_postalcode` VARCHAR(255)       NOT NULL DEFAULT '' COMMENT '用户地址所属邮编',
  `user_phone`      VARCHAR(255)       NOT NULL DEFAULT '' COMMENT '用户收件人电话，包含+86等前缀',
  `user_name`       VARCHAR(255)       NOT NULL DEFAULT '' COMMENT '用户收件人姓名',
  `user_qq`         VARCHAR(255)       NOT NULL DEFAULT '' COMMENT '用户收件人qq号',
  `address_status`  TINYINT            NOT NULL DEFAULT 0  COMMENT '用户地址状态，0表示可用，1表示删除',
  `create_time`     DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址创建时间',
  `update_time`     DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址更新时间',
  PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '用户地址信息表，id是主键';