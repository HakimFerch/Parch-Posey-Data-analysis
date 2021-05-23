# Parch-Posey-Data-analysis
# Data analysis using PostgreSQL11 and Tableau desktop.
## Tableau Dashboard Link: https://public.tableau.com/profile/hakim.ferchichi#!/vizhome/ParchposeyDashboard/Dashboard1

In this project i go through a detailed exploratory data analysis using both SQL queries and Tableau dashboarding tools. I tried to generate useful information through asking questions about key aspects of the business which can help us achieve a clearer picture of what the Parch & Posey database tells us.

The database tracks the sales of a fictional Business called 'Parch & Posey' which sells different types of paper to multiple clients across the United States.

The Data Model consists of 5 tables:
* accounts
* orders
* web_events
* sales_rep
* region

Using Tableau's Data processing feature, i tried to join all the data into a single table which highlights all details of every order in the database for each account.
### Data Model:
![image](https://user-images.githubusercontent.com/60581207/118823451-4883f480-b8b9-11eb-8803-bffd3c109602.png)

## Extracting insights through SQL Queries using PostgreSql 11:

 Average Sold quantity of each paper type ordered by client's name .

![image](https://user-images.githubusercontent.com/60581207/119061982-eec51c80-b9d5-11eb-92ad-cebe26375580.png)

 Top Sales represenative for every Region in the Untied States.

![image](https://user-images.githubusercontent.com/60581207/119062868-0b625400-b9d8-11eb-9705-a837260676c2.png)

 Customer with the highest standard paper type order cost between '2015-11-01' and '2016-06-02'.

![image](https://user-images.githubusercontent.com/60581207/119064942-c5f45580-b9dc-11eb-9e40-91401f2a5570.png)

 Create an e-mail and password for each sales primary poc combining their names and company names.

![image](https://user-images.githubusercontent.com/60581207/119159111-39d34400-ba57-11eb-8182-069160ccf464.png)
 
  Ranking  months regardless of which year by sales .
 
 ![image](https://user-images.githubusercontent.com/60581207/119162295-7ce2e680-ba5a-11eb-9596-99e7a6e0d904.png)
 
  Classifiying Accounts into 4 levels then calculating the average,maximum ,minimum and number of accounts for each class.
 
 ![image](https://user-images.githubusercontent.com/60581207/119255299-55575f80-bbbb-11eb-9dee-d8fdd60dad6a.png)

 






