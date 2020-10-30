create table cpb_users
(
	user_id int auto_increment comment '数字id自增'
		primary key,
	user_name varchar(50) not null comment '名称',
	img_id varchar(255) not null comment '头像图片',
	users_sex enum('男', '女') null comment '性别',
	branch_id int not null comment '支部id',
	organization_id int not null comment '组织id',
	users_phone int null comment '电话',
	users_email varchar(255) null comment '邮箱',
	users_political varchar(255) null comment '政治面貌',
	users_join_Date date null comment '入党日期',
	users_correctionDate date null comment '转正日期',
	role_id int not null comment '职位',
	users_password varchar(255) not null comment '密码：限制长度为8-16长度',
	wechat_id int null comment '第三方信息',
	users_status int null comment '存在：1 存在 0 删除'
)
comment '用户表';

