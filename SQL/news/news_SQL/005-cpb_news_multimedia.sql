create table cpb_news_multimedia
(
	id int auto_increment comment '多媒体编号
'
		primary key,
	news_multimedia_path varchar(255) not null comment '多媒体路径
',
	news_id varchar(255) not null comment '新闻编号
',
	constraint cpb_news_multimedia_cpb_news_id_fk
		foreign key (news_id) references cpb_news (id)
)
comment '多媒体路径表';

