create table cpb_news_review
(
	id int auto_increment comment '审核编号'
		primary key,
	user_id int not null comment '用户编号/审核人
',
	news_id varchar(255) not null comment '新闻编号
',
	news_review_status int null comment '审核状态
1 未审核 2 审核中 3审核完成
',
	news_review_date date null comment '审核日期
',
	news_review_directions varchar(512) null comment '审核说明',
	news_review_result int null comment '1 通过 0 不通过
审核结果
',
	constraint cpb_news_review_cpb_news_id_fk
		foreign key (news_id) references cpb_news (id),
	constraint cpb_news_review_cpb_users_user_id_fk
		foreign key (user_id) references cpb_users (user_id)
)
comment '新闻审核表';

