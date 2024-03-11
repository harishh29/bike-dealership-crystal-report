# BIKE-TRANSACTION-CRYSTAL-REPORT
## INTRODUCTION
This is a project as introduction to SAP Crystal Report for myself and those who are interested. The process involves from creating a database all the way to report creation.

## TOOLS

The tools involves in this project are:
- SQL Server Management Studio (SSMS)
- Microsoft Excel (If SSMS not connected to Crystal Report as ODBC)
- SAP Crystal Report

## ERD

The ERD is first draft using draw.io.
![Bike transaction drawio](https://github.com/harishh29/bike-dealership-crystal-report/assets/76155776/b299fe28-79a1-4a43-b071-f5b8ebad6d2a)

After the database has been created and each table are given their primary key, we can benefit from Database Diagram in SSMS.

![bikedealerdigram](https://github.com/harishh29/bike-dealership-crystal-report/assets/76155776/7516f1a8-d877-4b66-9a35-c174d4876091)

## DATABASE
For demonstration purposes, we created a mock up database and insert the values manually. To save time you can open the SQL file
and just run the query. Though, there might be some editing needed on your end.

![image](https://github.com/harishh29/bike-dealership-crystal-report/assets/76155776/99399e52-ed27-4e3d-82c4-c14eeb4b9673)


## REPORTING

### Bike Brand and Model Report
The first report quering all motorcycle brand available in the dealership and their respective model.

SQL VIEW:
![image](https://github.com/harishh29/bike-transaction-crystal-report/assets/76155776/54944f3a-e87d-47b8-8dbe-4814e6e5d410)
REPORT VIEW:
![image](https://github.com/harishh29/bike-transaction-crystal-report/assets/76155776/314e7a99-e639-43b1-9a8a-78964ee35de4)

[bikemodelreport.pdf](https://github.com/harishh29/bike-transaction-crystal-report/files/14562775/bikemodelreport.pdf)



### Salesman Report
The second report focuses on sales made by salesman. This is good for manager to monitor whether their employee reach their KPI, or commission claim.
SQL VIEW:
![image](https://github.com/harishh29/bike-transaction-crystal-report/assets/76155776/0fc11ca1-8c52-4b7f-96ca-dc6ebe4fd196)
REPORT VIEW:
![image](https://github.com/harishh29/bike-transaction-crystal-report/assets/76155776/37e009c3-4a16-48ec-b9db-8377aaebb42d)

[salesreport.pdf](https://github.com/harishh29/bike-transaction-crystal-report/files/14562857/salesreport.pdf)



## CONCLUSION
In my opinion, the SAP Crystal Report is very user-friendly especially in designing. For those who already have decent skill in SQL, this tools may not possess
a significant challenge compared to other tools, such as DAX in Power BI.
