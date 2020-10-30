create table cpb_news
(
	id varchar(255) not null comment '新闻编号:news+时间戳'
		primary key,
	name varchar(50) not null comment '新闻名称',
	subtitle varchar(50) not null comment '新闻副标题',
	author int not null comment '外键:作者/用户信息',
	publisher int null comment '外键:发布人/用户信息',
	date date null comment '发布时间',
	content varchar(2000) null comment '新闻内容',
	type int not null comment '新闻模式:1表示标题模式，2表示混排模式',
	review_id int null comment '外键:审核信息',
	status int null comment '存在状态:1 存在 0 删除',
	constraint cpb_news_ibfk_1
		foreign key (author) references cpb_users (user_id),
	constraint cpb_news_ibfk_2
		foreign key (publisher) references cpb_users (user_id)
)
comment '新闻表';

create index author
	on cpb_news (author);

create index publisher
	on cpb_news (publisher);

