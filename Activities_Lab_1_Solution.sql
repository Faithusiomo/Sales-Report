--Solution LAB DAY 1
--Select all the record where Region = South
SELECT * FROM SampleSuperstore WHERE REGION = 'SOUTH'



-- How many records South region has? 
SELECT COUNT(*) as South_Region FROM SampleSuperstore WHERE Region = 'SOUTH'



-- Count of sales of all Regions
SELECT REGION , COUNT(SALES) AS TOTAL_SALES FROM SampleSuperstore GROUP BY REGION



--Count of sales of all regions by category 
SELECT REGION , Category ,COUNT(SALES) AS TOTAL_SALES FROM SampleSuperstore GROUP BY REGION,Category



--Sort the sales in DESC order 
SELECT REGION , Category ,COUNT(SALES) AS TOTAL_SALES FROM SampleSuperstore GROUP BY REGION,Category ORDER BY TOTAL_SALES DESC


--Display the category and subcategory where profit is negative
SELECT CATEGORY, SUB_CATEGORY, Profit FROM SampleSuperstore WHERE Profit < -1


-- Total Sales of all the states
SELECT STATE , COUNT(SALES) AS TOTAL_SALES FROM SampleSuperstore GROUP BY STATE ORDER BY TOTAL_SALES DESC



--Which State has the most number of negative profit
SELECT STATE, COUNT(Profit) AS NEGATIVE_PROFIT FROM SampleSuperstore WHERE Profit < -1 GROUP BY STATE ORDER BY NEGATIVE_PROFIT DESC 


--Which Region has the most number of negative profit
SELECT REGION, COUNT(Profit) AS NEGATIVE_PROFIT FROM SampleSuperstore WHERE Profit < -1 GROUP BY REGION ORDER BY NEGATIVE_PROFIT DESC 


