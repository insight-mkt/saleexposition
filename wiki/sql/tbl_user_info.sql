-- 在系统中注册的用户表，tbl_user_info 表，用户个人信息表.

USE db_dream_go;

CREATE TABLE tbl_user_info (
  `id`           BIGINT AUTO_INCREMENT NOT NULL DEFAULT 0 COMMENT '注册用户信息表主键，对外不可见',
  `user_id`      VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '对外暴露的用户唯一id，字符串类型，由系统自动生成，不可修改，对外可现实',
  `user_name`    VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '用户登陆名，unique key，用户可修改，默认是注册使用的电话号码，或者是邮箱账号',
  `user_phone`   VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '用户绑定的电话号码，可修改',
  `user_email`   VARCHAR(255)          NOT NULL DEFAULT '' COMMENT '用户注册的邮箱账号,可修改',
  `usable_value` BIGINT                NOT NULL DEFAULT 0 COMMENT '用户可用的积分，按照1RMB:100积分换算',
  `usable_money` DECIMAL(18, 2)        NOT NULL DEFAULT 0.00 COMMENT '用户可用的积分，按照1RMB:100积分换算',
  `total_value`  BIGINT                NOT NULL DEFAULT 0 COMMENT '用户可用的积分，按照1RMB:100积分换算',
  `total_money`  DECIMAL(18, 2)        NOT NULL DEFAULT 0.00 COMMENT '用户可用的积分，按照1RMB:100积分换算',
  -- 用户账号对应的密码的密文 还是明文
  `user_status`  TINYINT               NOT NULL DEFAULT 0 COMMENT '标记任务是否删除，0表示注册成功并可用，1表示删除，2表示用户挂失，3表示被平台冻结',
  `create_time`  DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务创建时间',
  `update_time`  DATETIME              NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`user_id`)
) DEFAULT CHARACTER SET = utf8mb4 COMMENT = '用户信息表，id是主键，user_id做unique key，user_name对外显示的unique key';