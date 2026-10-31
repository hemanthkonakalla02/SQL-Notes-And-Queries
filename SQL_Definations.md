1]Explain indetail about SQL ?

    ->SQL stands for structured query langauge
    ->SQL is used to connect and interact with the relational databases like MySQL and Oracle
    ->SQL is used to create,read,update,delete data stored in tables
    ->In tables the data will be stored in the form of rows and columns
    ->The column is a place where we store similar data of one particular datatype
    ->Technically we call column as attribute or field
    ->One row can store all the details of one particular person
    ->Row can also be called as a record
    ->Technically we call row as an instance 
 

2]What is a database ?

    ->A database is a structured collection of data that is stored and accessed electronically,it allows the data to be efficiently stored,managed,updated and retrived


3]What is DBMS ?

    ->DBMS stands for database management system
    ->DBMS is a software that stores and retrieve data from the database


4]What is RDBMS ?

    ->RDBMS stands for relational database management system
    ->RDBMS stores data in tabular format and maintain relationship between tables using keys


5]Difference between DBMS and RDBMS ?

    1]DBMS stands for database management system
    2]DBMS manages data in a files
    3]In DBMS thier is no relation between data
    4]DBMS does not support normalization
    5]DBMS does not support distributed database
    6]DBMS provides less security features


    for an example:FileSystem


    1]RDBMS stands for relational database management system
    2]RDBMS stores data in tabular format
    3]RDBMS stores data in tabular format which are related to each other
    4]RDBMS supports distributed database
    5]RDBMS supports normalization
    6]RDBMS provides more security features

    for an example:MySQL and Oracle


6]What is a schema ?

    ->Schema is a logical structure of a database that defines tables,columns,contraints and relationships


7]What is a table ?

    ->A table is a database object that stores data in tabular format using rows and columns
    ->Each row represent one record
    ->Each column represent one attibute of that record.



8]What is a query ?

    ->A query is  a request to access and manipulate data present inside the table.


9]Explain indetail about SQL commands ?

    ->SQL commands is used to interact with the database
    ->In SQL thier are 5 different types of commands:-
        
        1]DDL[Data Defination Langauge]
            
            ->create : is used to create a database,table or any other database objects like stored procedures or functions

            ->alter : is used to modify the structure of a database table

            ->drop : is used to drop the tables from a database,using drop we can also drop the database as well

            ->rename : is used to change the name of a table

            ->truncate : is used to remove all the records from the table at the same time in a single step,after truncate thier will be a empty table structure

        DDL mainly deals with the structure


        2]DML[Data Manipulation Langauge]
            
            ->insert  : is used to insert the record in a table
                In insert thier are 2 types:-
                    i)implicit inserting
                    ii)explicit inserting

                        ->If insert data for all the columns in a table then it is called as implicit inserting
                        ->If insert data for specified columns in a table then it is called as explicit inserting

            ->update : is used to update the record in a table
                while using update if i dont use where cluase for the condition then it will update the entire column in a table

            ->delete : is used to delete the record in a table
                while using delete if i dont use where clause for the condition then it will delete the entire records from the table.


        DML mainly deals with the data




        3]DQL[Data Query Langauge]

            ->select : is used to read the records from a table
            while using select if i dont use where clause for the condition then it will read all the records from the table


        4]TCL[Transaction Control Langauge] (we need to turn off the auto-commit for TCL)

            ->commit : is used to save the current Transaction
            ->rollback : is used to undo the changes made in Transaction
            ->savepoint 


        5]DCL[Data Control Langauge]

            ->grant: is used to give the privilages to the user
            ->revoke : is used to revoke the privilages from a user



10]Explain indetail about SQL Constraints ?

    ->SQL constraint is a rule that is applied to a column in a table to enforce data integrity 
    ->In SQL thier are different types of constraints like:-
        
        i)NotNull
            ->If i specify a column with notnull constraint then it will not accept the null values

        ii)Unique
            ->If i specify a column with unique constraint then it will accept only unique values,it will not accept the duplicate values
        
        iii)check
            ->check constraint ensures that the column mets the specific condition,if the condition is not met then insertion/updation fails

        iv)default 
            ->default is used to set the default value for a column,if no value is specified during insert.

        v)primary key
            ->primary is a combination of both unique and not null
            ->In a table we can have only one primary key
            ->If i use primary key on more than one column in a table then it is called as composite primary key.

        vi)foreign key
            ->foreign key enforces referential integrity between parent and child tables

11]What is auto increment ?

    ->AutoIncrement is used to generate the sequence of values automatically.



12]Explain indetail about SQL datatypes ?

    ->SQL datatypes defines the kind of value that a column can store in a database table
    ->In SQL thier are different types of datatypes:-

        1]Numeric Type
            ->int : is used to store the whole numbers
            ->tinyint : is used to store the small numbers from the range 0-255
            ->decimal : is used to store the exact precision value
            ->float : is used to store the floating point values

        
        2]String type
            ->char : is used to store the fixed length String
            ->varchar : is used to store the variable length String
            ->text : is used to store large blocks of text


        3]DateTime type
            ->Date : is used to store data values
            ->Time : is used to store time values
            ->DateTime : is used to store DateTime values

        
        4]Boolean 
            ->Boolean is used to store true/false values
            ->If boolean value is true then it will store it as 1 in the database
            ->If boolean value is false then it will store it as 0 in the database


Difference between char and varchar ?

    ->for an example : name char(10) : always occupies 10 bytes
                                        if i store "hemanth" then it will occupies all 10 bytes
                                        char is faster and waste space

    ->for an example : varchar(10) : it occupies only what you store
                                        if i store "hemanth" then it will occupies only 7 bytes
                                        varchar is slower and saves space



13]Explain where in sql ?

    ->In SQL where is a clause
    ->In SQL where clause is used to filter the records,it extract only those records that fulfills the specific conditions
    ->where clause is used with different operators like IN,NOTIN,BETWEEN,NOTBETWEEN,LIKE,NOTLIKE and relational operators(>,<,>=,<=,==,!=)


14]Explain in detail about between and not between operators in sql ?

    ->The between and not between are the logical operators in sql ,used to filter data with in a specified range
    ->The between operator selects the values with in a specified range,here the range is inclusive meaning start values and end values are included
    ->The not between operator does exact opposite to between operator ,it selects the values that outfalls within the specified range.


15]Explain IN and NOTIN in sql ?

    ->IN operator allows you to specify multiple values in where clause
    ->NOTIN operator return rows where the column value not match with any value in the list.


16]Explain LIKE operator and NOT LIKE operator ?

    ->In SQL Like operator and NOT Like Operator are used for pattern matching,where = searches for exact match,LIKE operator allows you to search data like what         you are searching for
    ->The NOTLIKE does exact opposite to LIKE operator



17]Explain indetail about order by in sql ?

    ->The orderby keyword in sql is used to sort the resultset in ascending/descending order
    ->The orderby keyword is used to sort the records in ascending order by default,to sort the records in descending order we use desc keyword.


18]Explain in detail about groupby clause in sql ?

    ->The groupby clause organizes  rows that have same values into summary rows,it is almost used with aggregate functions like sum,count,max,min and avg
    ->If i select a column without aggregate function then it must be in groupby



19]Explain indetail about having in sql ?

    ->having is a clause
    ->having is a filter for groups,it is introduced in sql because we cannot use where clause with aggregate functions
    ->where filter rows before grouping
    ->having filter groups after aggregation


20]Explain in detail about aggregate functions ?

    ->Aggregate functions performs calculations on multiple rows and return single value
        ->sum : adds all values of a column
        ->count : returns total no of rows ,count(column) skips null rows
        ->max : returns maximum value of a column
        ->min : returns minimim value of a column
        ->avg : calculates avg of a column



21]SQL Query Execution Order ?

    ->FROM -> WHERE --> GROUPBY -->HAVING -->SELECT -->ORDERBY -->LIMIT


22]Explain indetail about SQL Joins ?

    ->SQL Joins is used to combine data from multiple tables
    ->In SQL thier are different types of joins:-
        
        1]Inner join
            ->Inner join will returns only matching rows from both the tables
        
        2]left join
            ->Left join will return all the records from the left table and only matching records from the right table
            ->If thier is no match then it will show NULL on right table columns

        3]right join
            ->Right join will return all the records from the right table,and only matching records from left table
            ->If thier is no match then it will show null on left table columns

        4]full outer join
            ->full outer join will return all the records from table
            ->MySQL does not support full outer join,so we use left join + right join along with union or unionall
            ->union will shows only unique records
            ->unionall will shows all the records
        
        5]cross join
            ->cross join returns the cartisian product of 2 table
            ->Every row from table 1 will join will all rows from table 2

        
        6]Self join
            ->A table will join with itself


        7]Natural join
            ->Natural join automatically joins tables based on common column name and datatype
            ->It is not recommended because if thier is a common column then it will give the output as inner join,if thier is no common column then it will give
            output as cross join


Difference between JOIN and UNION ?

    ->JOIN : combines columns from multiple tables horizontally
    ->UNION : combines rows from multiple tables veritically


Difference between UNION and UNIONALL ?

    ->UNION : combines result,removes duplicates
    ->UNIONALL : combines result,keep all duplicates
    UNIONALL is faster than UNION


23]What is alias ?

    ->Alias in sql is used to give temporary names to tables or columns that improves readability and simplfy the complex queries.


24]Explain what is stored procedures in sql ?

    ->A stored procedure is a pre-compiled set of sql statements stored in the database,that is executed when it is needed
    ->Stored procedures improves performance,re-usability,security and maintainability


25]Explain indetail about index ?

    ->An index is a special look up table,which is used to retrieve the data from the database quickly,it is like searching content in a book by checking the 
    index package
    ->Thier are 2 types of index:-
        i)Clustered index
        ii)Non clustered index
    

    ->Clustered index defines the order,in which the data is physically stored in the table,primary key on a column automatically creates the clustered index.
    ->In a table we can create only one clustered index
    ->Clustered index does not provide seperate index storage
    ->Clsutered index is faster for range queries because the data is sorted


    ->Non clustered index does not sort the data in table,Non clustered structure is stored at one place where the table at another place
    ->In a table we can create any number of non clustered index
    ->Non clustered index provides seperate index storage
    ->Non clustered index is high in performance


Advantages of index:

    ->We use index when column is frequently used with where 
    ->Column is used for joins
    ->Column is used with orderby

    ->We dont use index when table has very few rows
    ->Column is having too many null values
    ->Column is frequently updated.

Disadvantages of index:

    ->Index slows down INSERT,UPDATE,DELETE because the index also should get updated
    ->Index takes extra storage space


26]Difference between DELETE,DROP and TRUNCATE ?

    ->DELETE is used when i need to remove the specific records from the table,it supports where clause
    ->TRUNCATE is used when i want to remove records quickly and keep the tables structure
    ->DROP is used when i want to drop the entire table along with its data and schema

    DELETE is a DML command
    DROP and TRUNCATE is a DDL command


Q: "Can we rollback TRUNCATE?"

    ->No Truncate is a DDL command it cannot be rolled back,But DELETE is DML command it can be rolled back by using rollback


Q: "What happens to auto increment after TRUNCATE?"

    ->TRUNCATE resets the AutoIncrement back to 1,but DELETE does not reset it


Q: "Which is faster — DELETE or TRUNCATE?"

    ->TRUNCATE is faster because it removes all the rows in one step without logging individual rows deletion



27]Explain indetail about views in sql ?

    ->In sql, a view is a virtual table,based on the resultset of SQL statement
    ->A view contains rows and columns just like real table
    ->A fields in the view are fields from one or more tables in the database
    ->We can create view on
        i)single table (or) multiple tables
        ii)update view
        iii)delete view

->What is the use of views ?

        ->We use views for
            i)security: hides sensitive columns from user
                for an example:hiding salary column from junior developers

            ii)simplicity: complex joins saved as view
                    no need to rewrite everytime

            iii)Reusability: create once,use multiple times


    Types of views:
        i)simple view
        ii)complex view

    ->Simple view based on single table,supports INSERT,UPDATE,DELETE
    ->Complex view based on multiple tables or aggregate functions,it does not support INSERT,UPDATE and DELETE.

    View does not store data physically
    
    Everytime you query a view it runs the underlying SQL query
    View is just a Saved SQL Query.


    ->Difference between view and table ?
    
        ->Table : physically stores the data
        ->View : is a virtual table ,no physical storage ,it is just saved query


    ->Can we update a view ?
    
        ->Simple view based on single table can be updated,Complex view with joins and aggregate functions cannot be updated.



28]Explain indetail about ACID properties ?

    ->ACID properties ensures reliability and consistency of a database transactions

    ->A : Atomicity
    ->C : consistency
    ->I : Isolation
    ->D : Durability


Atomicity
    
    ->A transaction must either complete fully or fails completely
    ->If one step fails then the entire transaction is rolled back

    for an example: If i want to transfer 1000 rupess from Account A to Account B
    Then 1000 rupees will be deducted from Account A and credited into Account B
    But if system crashed before crediting into Account B then database rollback the transaction

    Partial update is not allowed


Consistency

    ->After a commited transaction,the database must remains in a valid state
    ->It must satisfies all SQL constraints 
        i)primary key
        ii)foreign key
        iii)check
        iv)unique
        v)notnull

    for an example:In a table thier is a column called as age which is having the check constraint like age>=18
    If use tries to enter the age as 15 then database will rejects the invalid data.



Isolation   

    ->Multiple transactions should not interfere with each other intermediate state
    for an example:If user is updating the salary
    User B should not see the uncommited data

    In Isolation thier are 4 levels:
        1]READ uncommited : read only uncommited data
        2]READ commited : can rad ony commited data
        3]REPEATED READ : same query returns same result with in a transaction
        4]Serializable : Highest Isolation
            Transaction run one by one


Durability

    ->Once a transaction is commited ,it remains permantely saved even if system crashes
    for an example:After a sucessfull transaction the data is safe even the power fails


29]Explain indetail about subqueries ?

    ->A query nested inside another query is called as subquery
    ->The subquery will get executed first based on the result the outer query will execute
    ->Thier are 3 types of subqueries:-
        1]Single row subquery : returns single row
        2]Multi row subquery : returns multiple rows
        3]co-related subquery : inner query depends on outer query executes row by row



30]Difference between stored procedure vs functions ?

    1]Stored procedure called with call                     1]function used in select
    2]Stored procedure return 0 or multiple values          2]function must return one value
    3]Stored procedure supports DML                         3]In funtions no DML is allowed
    4]Stored procedure supports transaction                 4]In function their is no transaction
    5]Stored procedure supports OUT parameter               5]In function thier is no OUT parameter



31]Explain what is normalization ?

    ->Normalization in SQL is the process of organizing the database structure to reduce redundancy,ensure data intergrity and make the database more efficient to
    maintain
    ->The different normal forms in SQL includes 1NF(First Normal Form),2NF(Second Normal Form),3NF(Third Normal Form) each focusing on reducing redundancy and organizing
    data logically



32]Explain indetail about Query Optimization Techniques ?

    ->Query Optimization is a process of writing the SQL query in a efficient way to increase the database performance
    ->For an example: In Development Environment ,if i write any complex SQL query it will not show any performance issue because in development environment
    will have less data,but in production environment thier will be a millions of records so performance issue comes into the picture which means SQL query will
    take some time to execute,so to overcome this problem we should use query optimization techniques
    
    ->Thier are different ways to optimize the Query
    
    i)Using index
        ->An index is a special look up table which is used to retrieve the data from the database quickly ,it is like searching content in a book by checking
            the index page
        ->Index uses BTree data structure to retrive the data faster and increase the performance

    ii)Replace UNION with UNIONALL
        ->Because UNION will forces the database to sort the data and removes duplicates which is time consuming
        ->If i know the data is already unique or duplicates are acceptable ,i uses UNIONALL becauce it just appends the data instantly

    iii)Avoding leading wildcards in Like
    ->A leading percentage sign forces full table scan which breaks the index,using 'h%' allows the BTree index to work perfectly

    iv)use specific columns instead of select *
    ->Because usually select * pulls unnecessary columns which waste the Disk IO and network bandwidth
    so i select only the exact columns required by the application

    Whenever a query takes too long in production, I prefix it with EXPLAIN in MySQL. 
    and I immediately look at the type and key columns. If type shows ALL and key is NULL, 
    I know it's performing a full table scan. then i create a B-Tree index on the filtering columns and
    re-run EXPLAIN to ensure the query is optimized and the row count drops.
