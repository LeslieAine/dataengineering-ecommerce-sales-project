#to copy all csv files to same location
aws s3 cp . s3://ecommerce-sales-data-dev/ecommerce_sales/raw_sales_reference_data/ --recursive --exclude "*" --include "*.csv"


#to copy all Dimension and fact csv files to individual locations(helps for Athena queries)

aws s3 cp DimCategory.csv s3://ecommerce-sales-data-dev/ecommerce_sales/raw_sales_data/category/
aws s3 cp DimDate.csv s3://ecommerce-sales-data-dev/ecommerce_sales/raw_sales_data/date/
aws s3 cp DimCountry.csv s3://ecommerce-sales-data-dev/ecommerce_sales/raw_sales_data/country/
aws s3 cp FactSales.csv s3://ecommerce-sales-data-dev/ecommerce_sales/raw_sales_data/sales/



