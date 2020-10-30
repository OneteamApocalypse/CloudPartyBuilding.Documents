create table cpb_news_permission
(
	id int not null
		primary key,
	user_id int null comment '外键:用户编号',
	editable int null comment '编辑文章权限:1 可编辑 0 不可编辑',
	commentable int null comment '评论权限:1 存在 0 不存在',
	review int null comment '审核权限:1 存在 0 不存在',
	`release` int null comment '发布权限:1 存在 0 不存在',
	status int null comment '存在状态:1 存在 0 删除',
	constraint cpb_news_permission_ibfk_1
		foreign key (user_id) references cpb_users (user_id)
)
comment '新闻权限表';

create index user_id
	on cpb_news_permission (user_id);

