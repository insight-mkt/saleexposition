-- 在系统中注册的用户的充值明细表，tbl_user_recharge_detail 表，记录用户的充值详细信息，包含每一笔充值成功，充值失败，主动取消，被平台取消，异常失败等多个状态。

USE db_dream_go;

CREATE TABLE tbl_user_recharge_detail (
  `id`           BIGINT AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '用户充值详细表主键，对外不可见',
  `user_id`           VARCHAR(255)     NOT NULL DEFAULT '' COMMENT '对应用户的tbl_user_info表的user_id作为外键关联',
  `recharge_order_no` VARCHAR(255)     NOT NULL DEFAULT '' COMMENT '系统生成的本次充值订单号，可包含时间到秒级别+随机数字',
  `recharge_value`    BIGINT           NOT NULL DEFAULT 0 COMMENT '充值积分数量',
  `recharge_money`    DECIMAL(18,2)    NOT NULL DEFAULT 0.00 COMMENT '充值金额，小数点2位',
  `bonus_ratio`       DECIMAL(2,2)     NOT NULL DEFAULT 0.00 COMMENT '本次充值奖励比例',
  `bonus_value`       BIGINT           NOT NULL DEFAULT 0 COMMENT '本次充值奖励积分，由充值金额* 奖励比例计算得出',
  `bonus_money`       DECIMAL(18,2)    NOT NULL DEFAULT 0 COMMENT '本次充值奖励金额',
  `third_trade_no`    VARCHAR(255)     NOT NULL DEFAULT '' COMMENT '第三方交易流水号',
  `rechage_status`    TINYINT          NOT NULL DEFAULT 0 COMMENT '本次充值状态，0新建充值单，1表示充值成功，2表示用户取消，3表示充值失败，4表示系统充值失败',
  `create_time`       DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址创建时间',
  `update_time`       DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '地址更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`recharge_order_no`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '用户充值详细表，id是主键';