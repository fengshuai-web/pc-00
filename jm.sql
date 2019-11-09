SET NAMES UTF8;
DROP DATABASE IF EXISTS jm;
CREATE DATABASE jm CHARSET=UTF8;
USE jm;
#网站的基本信息
CREATE TABLE jm_site_info(
	site_name VARCHAR(16),
	logo VARCHAR(64),
	copyright VARCHAR(64)
);
INSERT INTO jm_site_info VALUES("嘉木","images/01-index/adv_left.jpg","Copyright © 2010-2017 家居商城. All rights reserved");

#导航条目
CREATE TABLE jm_navbar_item(
	name VARCHAR(16),
	url VARCHAR(64),
	title VARCHAR(32)
);
INSERT INTO jm_navbar_item VALUES("商城首页","/index.html","商城详情"),
("商品分类","/index.html","商城详情"),
("支付方式","/index.html","多手段支付"),
("节气故事","/index.html","节气来历"),
("关于嘉木","/index.html","联系我们");

#轮播图
CREATE TABLE jm_carousel_item(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	title VARCHAR(32)
);
INSERT INTO jm_carousel_item VALUES
(NULL,"images/01-index/banner1.jpg","/m1.html","清闲淡雅"),
(NULL,"images/01-index/banner2.jpg","/m2.html","清闲淡雅2"),
(NULL,"images/01-index/banner3.jpg","/m3.html","清闲淡雅3");

#商品列表
CREATE TABLE jm_new_product(
	pic INT NOT NULL,
	titlt VARCHAR(16),
	img VARCHAR(128),
	price DECIMAL(10,2)
);
INSERT INTO jm_new_product VALUES
("1","银湖","images/01-index/banner2.jpg","3800"),
("2","银湖","images/01-index/banner3.jpg","2800"),
("3","银湖","images/01-index/banner4.jpg","1500");

#用户表
CREATE TABLE jm_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(11),
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender INT
);
INSERT INTO jm_user VALUES("1","dingding","123456","ding@qq.con","12345464557","images/01-index/bigsofa1.jpg","张三","1");

































































