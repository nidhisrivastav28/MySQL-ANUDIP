Day6- Lab

Lab 1:Using database Ecommerce to complete the task.

Task: Imagine you are managing an e-commerce platform, and the holiday season is approaching. To capitalize on the festive spirit and boost sales, you decide to organize a special seasonal sale featuring electronics. The goal is to offer discounts on electronics and include products with a price less than rs. 7,000 in the promotion.Write a query to find products from the "product" table that are either in the 'Electronics' category or have a price less than 7000.
Hint: Use Or operator to retrieve product details.

/*Before retrieving*/
-> select * from product;
+------------+--------------+----------------+--------------+----------------+---------------+-------+
| product_id | product_name | category       | sub_category | original_price | selling_price | stock |
+------------+--------------+----------------+--------------+----------------+---------------+-------+
| P01        | Dell         | Electronics    | Laptop       |          50000 |         45000 |   100 |
| P02        | Zara Top     | Clothing       | T-Shirts     |           3000 |          2500 |   150 |
| P03        | Cooking Set  | Home & Kitchen | Cookware     |           3000 |          2340 |    80 |
+------------+--------------+----------------+--------------+----------------+---------------+-------+
3 rows in set (0.00 sec)

/*OUTPUT*/
/*Retrieving Product Details*/
-> select * from product
-> WHERE category = 'Electronic' OR selling_price<7000;
+------------+--------------+----------------+--------------+----------------+---------------+-------+
| product_id | product_name | category       | sub_category | original_price | selling_price | stock |
+------------+--------------+----------------+--------------+----------------+---------------+-------+
| P02        | Zara Top     | Clothing       | T-Shirts     |           3000 |          2500 |   150 |
| P03        | Cooking Set  | Home & Kitchen | Cookware     |           3000 |          2340 |    80 |
| P04        | Redmi        | Electronics    | SmartPhones  |           5000 |          4500 |   100 |
| P05        | LG           | Electronics    | Television   |           7000 |          6500 |   100 |
+------------+--------------+----------------+--------------+----------------+---------------+-------+
4 rows in set (0.00 sec)
