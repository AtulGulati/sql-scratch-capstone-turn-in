SELECT * FROM survey LIMIT 10;
 --question
 --user_id
 --response
SELECT question, COUNT(DISTINCT user_id) FROM survey GROUP BY 1; 
--Q1 - 100%
--Q2-- 95%
--Q3-- 80%
--Q4-- 95%
--Q5-- 75%
--Q3 and Q5 have lower completion rates
-- Q3 - Answering on shape is pretty difficult as this involves self-assessment
-- Q5 - Record / remembering the last eye exam may not be readily accessible. At it's best, it may need a guess work
SELECT * FROM quiz LIMIT 5;
-- user_id, style, fit, shape, color
SELECT * FROM home_try_on LIMIT 5;
-- user_id, number_of_pairs, address
SELECT * FROM purchase LIMIT 5;
--user_id, product_id, style, model_name, color, price
SELECT DISTINCT q.user_id, h.user_id IS NOT NULL AS 'is_home_try_on', 
h.number_of_pairs, 
p.user_id IS NOT NULL AS 'is_purchase' 
FROM quiz q 
LEFT JOIN home_try_on h 
ON q.user_id = h.user_id 
LEFT JOIN purchase p
ON p.user_id = q.user_id
LIMIT 10;
--Overall conversion from quiz to purchase @ 49.5% 
--1000 (100%) participants in the quiz, 750 (75%) had home_try_on, 495 (49.5%) purchased. Conversion from quiz to home_try-on @ 75% and home_try_on to purchase @ 66%
-- From a sample of 10, 3 purchases were made of which 2 are from a pair of 3 and 1 from a pair of 5. Purchase rate for 3 pair is 67% and purchase rate for 5 pair is 33%
SELECT * FROM quiz LIMIT 10;
SELECT * FROM purchase LIMIT 10; 







