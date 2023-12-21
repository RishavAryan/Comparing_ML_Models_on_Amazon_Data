select *from amazon_review;

/*revies having rating 5 */

select reviews
from amazon_review where rating =5
group by reviews;

/*here  the product name is displaying with  counting number of review for that product and arranging in desending order*/
select productname, count(reviews) as ReviewCount 
from amazon_review
group by productname
order by ReviewCount desc;

/*displaying product with average of rating in descending order*/
select productname, AVG(rating) as AvgRating 
FROM amazon_review
group by productname
order by AvgRating  desc;

/*Brand having review votes greater than five*/
select brand
from amazon_review WHERE reviewvotes > 5
group by brand;

/*displaying brand and average price for that brand*/
select brand, avg(price) as avgprice
from amazon_review
group by brand
order by avgprice desc;


/*displaying brand , rating and reviews*/
select brand, avg(rating) as avgrating, count(reviews) as ReviewCount
from amazon_review
group by brand
order by avgrating desc;



