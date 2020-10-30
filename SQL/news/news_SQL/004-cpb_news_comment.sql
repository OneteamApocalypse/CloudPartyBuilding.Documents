create table cpb_news_comment
(
	id int auto_increment comment '评论编号
'
		primary key,
	user_id int not null comment '评论人id
',
	content varchar(255) not null comment '评论类容
',
	date date null comment '评论时间
',
	news_id varchar(255) not null comment '新闻编号
',
	constraint cpb_news_comment_cpb_news_id_fk
		foreign key (news_id) references cpb_news (id),
	constraint cpb_news_comment_cpb_users_user_id_fk
		foreign key (user_id) references cpb_users (user_id)
)
comment '新闻评论表';

