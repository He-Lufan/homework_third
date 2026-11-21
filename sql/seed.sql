USE bookshop;
INSERT INTO authors (name,bio) VALUE
("金庸","武侠作家"),("莫言","当代作家"),("阿加莎","推理作家")("司马迁","史学家");

INSERT INTO books (title,author_id,price,stock,published_at,created_at) VALUE
("雪山飞狐",(SELECT id FROM authors WHERE name="金庸"),35.00,4,2011-11-01),
("连城诀",(SELECT id FROM authors WHERE name="金庸"),35.00,2,2011-11-01),
("天龙八部",(SELECT id FROM authors WHERE name="金庸"),136.00,1,2011-11-01),
("红高粱家族",(SELECT id FROM authors WHERE name="莫言"),49.00,0,2017-01-01),
("蛙",(SELECT id FROM authors WHERE name="莫言"),49.00,4,2020-03-01),
("无人生还",(SELECT id FROM authors WHERE name="阿加莎"),42.00,0,2020-07-01),
("东方快车谋杀案",(SELECT id FROM authors WHERE name="阿加莎"),42.00,5,2020-07-01),
("史记",(SELECT id FROM authors WHERE name="司马迁"),48.00,3,2016-10-1);