# Athena job to join 4 tables to new table and location

CREATE TABLE "db-ecommerce-raw-sales-data"."ecommerce-transformed-sales"
WITH (
format='TEXTFILE',
external_location='s3://ecommerce-sales-data-dev/ecommerce_sales/raw_sales_data/transformed/'
) AS
select s.amount,s.orderid,s.categoryid,s.countryid,s.dateid,ca.category,co.country,d.date,d.year,d.quarter,d.quartername,d.month,d.monthname,d.day,d.weekday,d.weekdayname from "db-ecommerce-raw-sales-data"."sales" s
INNER JOIN "db-ecommerce-raw-sales-data"."country" co ON s.countryid=co.countryid
INNER JOIN "db-ecommerce-raw-sales-data"."category" ca ON s.categoryid=ca.categoryid
INNER JOIN "db-ecommerce-raw-sales-data"."date" d ON s.dateid=d.dateid
;
