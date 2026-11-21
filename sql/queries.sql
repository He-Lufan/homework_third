USE bookshop;

SELECT title,stock FROM books WHERE stock==0;   --Q1：查询库存为 0 的书名和库存。
   
SELECT title,id,price FROM books
ODER BY price DESC,id ASC LIMIT 3;   --Q2：按价格降序取前三本，同价时按 id 升序。

SELECT title,price FROM books WHERE price BETWEEN 20 AND 40;    --Q3：查询价格在 20 到 40 之间的书（含边界）。

SELECT b.title,a.name AS author,b.price FROM books AS b
JOIN authors AS a ON b.author_id=a.id
ORDER BY b.id;   --Q4：JOIN 查每本书的书名、作者名和价格。

SELECT title,stock FROM books WHERE title="天龙八部";
UPDATE books SET stock=stock-1 
WHERE title="天龙八部" AND stock>0;
SELECT title,stock FROM books;  --Q5：先 SELECT 确认，再把你指定的一本有库存的书库存减 1；不要减成负数。

INSERT INTO books(title,author_id,price,stock,published_at) VALUE
("报任安书",(SELECT id FROM authors WHERE name="司马迁"),10.00,1);
SELECT title FROM books WHERE title="报任安书"
DELETE FROM books WHERE title="报任安书";     --Q6：插入一条唯一标记的临时书，确认后按条件删除它，不删除其他书。
