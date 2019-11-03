-- 在系统中注册的用户的花费明细表，tbl_user_cost_detail 表，记录用户的花费详细信息，包含每一笔充值成功，充值失败，主动取消，被平台取消，异常失败等多个状态。

USE db_dream_go;

CREATE TABLE tbl_user_cost_detail (
  `id`            BIGINT AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '用户花费详细表主键，对外不可见',
  `user_id`       VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '对应用户的tbl_user_info表的user_id作为外键关联',
  `cost_order_no` VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '系统生成的本次花费订单号，可包含时间到秒级别+随机数字',
  `cost_value`    BIGINT                NOT NULL DEFAULT 0 COMMENT '花费积分数量',
  `cost_money`    DECIMAL(18,2)         NOT NULL DEFAULT 0.00 COMMENT '花费金额，小数点2位',
  `goods_no`      VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '本次花费对应的商品唯一编号',
  `cost_status`   TINYINT               NOT NULL DEFAULT 0
  COMMENT '本次花费状态，0新建，1表示花费成功，2表示用户主动取消，3表示花费失败，4表示系统失败',
  `create_time`   DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址创建时间',
  `update_time`   DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`cost_order_no`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '用户充值详细表，id是主键';