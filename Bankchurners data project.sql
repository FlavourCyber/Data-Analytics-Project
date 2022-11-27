SELECT * FROM bankchurn;
-- RETRIEVE EVERYTHING IN BANKCHURN TABLE
SELECT * FROM bankchurn;

-- Retrieve a count of existing customers
SELECT COUNT(*)
FROM bankchurn
WHERE Attrition_Flag = 'Existing Customer';

-- Retrieve a count of attrited customers
SELECT COUNT(*)
FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';

-- Retrieve sum of credit limit for Attrited Customers
SELECT SUM(Credit_Limit)
FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';

-- Retrieve average total revolving balance for attrited customers
SELECT AVG(Total_Revolving_Bal)
FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';


-- Retrieve average total revolving balance for existing customers
SELECT AVG(Total_Revolving_Bal)
FROM bankchurn
WHERE Attrition_Flag = 'Existing Customer';

-- Retrieve max total Relationship count for Existing Customer
SELECT MAX(Total_Relationship_Count)
FROM bankchurn
WHERE Attrition_Flag = 'Existing Customer';

-- Retrieve max total Relationship count for Attrited Customer
SELECT MAX(Total_Relationship_Count)
FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';

-- Retrieve min total Relationship count for Attrited Customer
SELECT MIN(Total_Relationship_Count)
FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';

-- Retrieve min total Relationship count for Existing Customer
SELECT MIN(Total_Relationship_Count)
FROM bankchurn
WHERE Attrition_Flag = 'Existing Customer';

-- Retrieve average total Relationship count for Attrited Customer
SELECT AVG(Total_Relationship_Count)
FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';

-- Retrieve average total Relationship count for Existing Customer
SELECT AVG(Total_Relationship_Count)
FROM bankchurn
WHERE Attrition_Flag = 'Existing Customer';

-- Retrieve customers by income category
SELECT Income_Category, COUNT(*)
FROM bankchurn
GROUP BY Income_Category;

-- Retrieve all Attrited customers 
SELECT * FROM bankchurn
WHERE Attrition_Flag = 'Attrited Customer';


-- Retrieve customers by income category and Attrition flag 
SELECT Income_Category, Attrition_Flag, COUNT(*)
FROM bankchurn
GROUP BY Income_Category, Attrition_Flag;

-- Retrieve customers by Gender and Attrition flag 
SELECT Gender, Attrition_Flag, COUNT(*)
FROM bankchurn
GROUP BY Gender, Attrition_Flag;

-- Retrieve customers by income category CASE WHEN 'Less than $40K' 
SELECT Income_Category, Attrition_Flag, COUNT(*)
FROM bankchurn
WHERE Income_Category= 'Less than $40K'
GROUP BY Income_Category, Attrition_Flag;

-- Retrieve customers by income category CASE WHEN 'Less than $40K' 
SELECT Income_Category, Attrition_Flag, COUNT(*)
FROM bankchurn
WHERE Income_Category= 'Less than $40K'
GROUP BY Income_Category, Attrition_Flag;

-- Retrieve customers by income category CASE WHEN '$120K +' 
SELECT Income_Category, Attrition_Flag, COUNT(*)
FROM bankchurn
WHERE Income_Category= '$120K +'
GROUP BY Income_Category, Attrition_Flag;

-- Retrieve COUNT OF customers with Avg_Utilization_Ratio= 0
SELECT Attrition_Flag, COUNT(*)
FROM bankchurn
WHERE Avg_Utilization_Ratio= 0
GROUP BY Attrition_Flag;


SELECT * FROM bankchurn
WHERE (Income_Category = '$120K +' AND Attrition_Flag = 'Existing Customer')
GROUP BY Income_Category, Attrition_Flag;

SELECT * FROM bankchurn
WHERE (Income_Category = '$120K +' AND Attrition_Flag = 'Attrited Customer')
GROUP BY Income_Category, Attrition_Flag;

-- Retrieve Attrition Flag breaking down segments by 1 and 2
SELECT Attrition_Flag, CASE 
      WHEN Attrition_Flag = 'Existing Customer' THEN 1
      WHEN Attrition_fLAG = 'Attrited Customer' THEN 2
      END AS Breakdown
 FROM bankchurn;    
 
 -- Retrieve Income_Category breaking down segments by 1,2,3,4,5,6
 SELECT Income_Category, CASE 
 WHEN Income_Category ='Less than $40k' THEN 1
      WHEN Income_Category ='$40K - $60K' THEN 2
      WHEN Income_Category ='$60K - $80K' Then 3
	  WHEN Income_Category ='$80K - $120K' Then 4
	  WHEN Income_Category ='$120K +' Then 5
      WHEN Income_Category ='Unknown' Then 6
      END AS BreakdownIncome
 FROM bankchurn;   


-- RETRIEVE COUNT OF ATTRITED CUSTOMERS AND EXISTING CUSTOMERS

SELECT Attrition_Flag, 
COUNT(*)
FROM bankchurn
GROUP BY Attrition_Flag;


-- RETRIEVE COUNT OF ATTRITED CUSTOMERS AND EXISTING CUSTOMERS GROUPING BY GENDER
SELECT Attrition_Flag, Gender, COUNT(*)
FROM bankchurn
GROUP BY Attrition_Flag, Gender;


-- Retrieve a breakdown of income category & Attrition Flag
SELECT Income_Category, Attrition_Flag, COUNT(*)
FROM bankchurn
GROUP BY Income_Category, Attrition_Flag;