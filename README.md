# dataengineering-ecommerce-sales-project

In this project, I will use sales data from an online ecommerce shop that sells items online in the categories of electronics, books, toys, sports and software to the consumers. 

The data of sales made is collected with a time stamp and a database with tables in the star schema are created for normalisation of the data. The data is manipulated in AWS cloud to be cleaned for analysis of sales monthly, quarterly, category and countries of consumption. 

For this project, I will use S3 buckets, Athena for SQL, Lambda to create a function during the transformation phase and AWS Glue to create databases and tables to create data. 

I had to create roles to allow Athena, Lambda, and Glue interact with the data in the S3 bucket.

Create and run a crawler on the raw data in the S3 bucket and create a database in AWS Glue to store the raw csv files. 

An ETL job is run in Glue to automate the process when future data is added to the databases. 
Quicksight is used to create a dashboard to easily view the analysis made for the ecommerce shop. 

Apache Spark is later used on the collected data for Machine Learning to predict expected sales in the future. 


PS. The sample data used in this project is not accurately specific to any company and is for project purposes. 
