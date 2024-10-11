
INSERT INTO users (user_id , full_name , email, `password`) VALUES
(1 , "A" , "A@gmail.com" , 1234),
(2 , "B" , "B@gmail.com" , 1234),
(3 , "C" , "C@gmail.com" , 1234),
(4 , "D" , "D@gmail.com" , 1234),
(5 , "E" , "E@gmail.com" , 1234),
(6 , "F" , "F@gmail.com" , 1234),
(7 , "G" , "G@gmail.com" , 1234),
(8 , "H" , "H@gmail.com" , 1234) , 
(9 , "I" , "I@gmail.com" , 1234),
(10 , "j" , "J@gmail.com" , 1234)
  
INSERT INTO restaurant (res_id , res_name, image , `desc`) VALUES
(1 , "so 1" , "jpg.1" , "binh dan"),
(2 , "so 2" , "jpg.2" , "binh dan"),
(3 , "so 3" , "jpg.3" , "tiec cuoi"),
(4, "so 4" , "jpg.4" , " hai san"),
(5 , "so 5" , "jpg.5" , "nha hang nhat ban"),
(6 , "so 6" , "jpg.6" , "nha hang phap"),
(7 , "so 7" , "jpg.7" , "nha hang italy"),
(8 , "so 8" , "jpg.8" , "nha hang nhat ban"),
(9, "so 9" , "jpg. 9" , "nha hang phap"),
(10 , "so 10" , "jpg.10" , "binh dan")

INSERT INTO food_type (type_id ,type_name) VALUES 
(1 , "sushi"),
(2 , "meat"),
(3 , "seafood"),
(4 , "wine"),
(5 , "pizza"),
(6 , "sashimi"),
(7 , "spagetti")

INSERT INTO food (food_id , food_name , image , price , `desc` , type_id) VALUES 
(1 , "tuna sushi" , "png.1" , 7.5 , "japanese tuna sushi" , 1 ), 
(2 , "Chateau wine" , "png.2" , 15  , "french wine" , 4),
(3 , "pizza" , "png.3" , 5 , "italian pizza" ,5),
(4 , "salmon sashimi"  , "png.4" , 8 , "japanese sashimi" , 6),
(5 , "bacon" , "png.5" , 18 , "bacon from europe" , 2),
(6 , "lobster" , "png.6" , 29 , "lobster from sea" , 3),
(7 , "lamb" , "png.7" , 9.8 , "grilled lamb" , 2),
(8 , "kobe beef" , "png.8" , 105.8 , "kobe beef from Japan" , 2),
(9 , "Freixenet wine" , "png.9" , 30 , "Spanish wine" , 4),
(10, "spagetti" , "png.10" , 7, "spagetti" , 7),
(11, "mackerel sushi" , "png.11" , 6.4 , "Japanese mackerel sushi" , 1)


INSERT INTO sub_food (sub_id , sub_name ,sub_price , food_id) VALUES
(1 , "iberico bacon" , 250 , 5),
(2 , "kobe beef 5 years" , 1000 , 8),
(3 , "bordeaux chateua wine" , 70.3 , 2),
(4 , "handmade pizza" , 50 ,3 ),
(5 , "lobster from Alaska" , 80 , 6) 

INSERT INTO rate_res (rate_id , user_id , res_id , amount , date_rate) VALUES
(1 , 2 , 3 , 3 , '2024-10-10 13:21:40'),
(2 , 1 , 4 , 2 , '2024-10-04 10:21:42'),		
(3 , 1 , 2 , 4 , '2024-10-02 10:25:50'),	
(4 , 7 ,  8, 3 , '2024-06-07 15:50:55'),	
(5 , 6 ,  10, 5 , '2024-05-07 15:55:58'),	
(6 , 5 ,  4, 5 , '2024-03-07 20:53:55'),
(7 , 4 , 9 , 4 ,'2024-09-25 08:53:49'),
(8 , 3 ,  6, 5 , '2024-07-07 15:50:52'),
(9 , 8 ,  3, 1 , '2024-06-07 17:50:55'),
(10 , 9 ,  1, 3 , '2024-10-07 15:30:57'),
(11 , 10 , 5, 4 , '2024-01-07 15:50:52'),
(12 , 6 , 7 , 3 , '2024-02-20 10:45:49')

INSERT INTO like_res (like_id , user_id , res_id , date_like) VALUES
(1 , 2 , 3  , '2024-10-10 13:21:40'),
(2 , 1 , 4  , '2024-10-04 10:21:42'),		
(3 , 1 , 2  , '2024-10-02 10:25:50'),	
(4 , 7 ,  8 , '2024-06-07 15:50:55'),	
(5 , 6 ,  10 , '2024-05-07 15:55:58'),	
(6 , 5 ,  4 , '2024-03-07 20:53:55'),
(7 , 4 , 9  ,'2024-09-25 08:53:49'),
(8 , 3 ,  6 , '2024-07-07 15:50:52'),
(9 , 8 ,  3 , '2024-06-07 17:50:55'),
(10 , 9 ,  1 , '2024-10-07 15:30:57'),
(11 , 10 , 5 , '2024-01-07 15:50:52'),
(12 , 6 , 7  , '2024-02-20 10:45:49')

INSERT INTO  `order` (order_id , user_id , food_id , amount , `code` , arr_sub_id) VALUES
(1 , 2  , 3 , 2 , 'abcd' , 'x' ),
(2 , 3  , 4 , 1 , 'abcd' , 'x' ),
(3 , 1  , 7 , 6 , 'abcd' , 'x' ),
(4 , 2  , 6 , 3 , 'abcd' , 'x' ),
(5 , 6  , 5 , 2 , 'abcd' , 'x' ),
(6 , 7  , 8 , 5 , 'abcd' , 'x' ),
(7 , 8  , 9 , 1 , 'abcd' , 'x' ),
(8 , 9  , 10 , 1 , 'abcd' , 'x' ),
(9 , 10 , 11 , 2 ,'abcd' , 'x' ),
(10 , 5 , 2 , 3 , 'abcd' , 'x' ),
(11 , 4 , 6 , 5 , 'abcd' , 'x' ),
(12 , 3 , 5 , 4 , 'abcd' , 'x' )

SELECT * FROM `order`

-- TIM 5 NGUOI LIKE NHIEU NHAT --

SELECT COUNT(like_res.user_id), like_res.user_id, users.user_id , users.full_name , users.email  FROM like_res INNER JOIN users on like_res.user_id = users.user_id GROUP BY like_res.user_id ORDER BY `COUNT(like_res.user_id)` DESC LIMIT 5
   
-- TIM 2 NHA HANG CO LUOT LIKE NHIEU NHAT--   

SELECT COUNT(like_res.res_id), like_res.res_id , restaurant.res_id , restaurant.res_name FROM like_res
INNER JOIN restaurant on like_res.res_id = restaurant.res_id
GROUP BY like_res.res_id
ORDER BY `COUNT(like_res.res_id)` DESC LIMIT 2

-- TIM NGUOI DUNG KHONG HOAT DONG TRONG HE THONG --

SELECT users.user_id , users.full_name, users.email , like_res.user_id , rate_res.user_id, `order`.user_id FROM users 
LEFT JOIN like_res on users.user_id = like_res.user_id
LEFT JOIN rate_res on users.user_id = rate_res.user_id
LEFT JOIN `order` on users.user_id = `order`.user_id 
WHERE like_res.user_id is NULL AND rate_res.user_id is NULL AND `order`.user_id is NULL 