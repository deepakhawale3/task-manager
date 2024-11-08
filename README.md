This project is Created in Laravel 10 Version.
PHP version is used 8.1.28. 
MySQL is used for Database. 
***************************************************************************************************
Requirements - PHP 8.1.28, Composer, MySQL

***************************************************************************************************
Step 1- Clone this Repository 

Step 2- Navigate to folder (task-manager)

Step 3-  Install Project Dependencies using below Command
        "composer install" 

Step 4- Set Up the Environment File 
         You will need to create an .env file based on the example provided in the project using- 
         "cp .env.example .env"
         or in windows 
         "copy .env.example .env" 

Step 5- Generate the Application Key using- 
        "php artisan key:generate"

Step 6- Set Up the Database 
        You will need to configure your database in the .env file. 
        Look for these lines in the .env file 
        and update them with your database connection details.- 
        DB_CONNECTION=mysql
        DB_HOST=127.0.0.1
        DB_PORT=3306
        DB_DATABASE=(Your Database name example- task_manager)
        DB_USERNAME=(Your Username)
        DB_PASSWORD= (Your Password)

Step 7- If you creating new database then 
        Run Database Migrations using below command 
        "php artisan migrate"
        or 
        You can use provided Database file. 

Step 6- Run the Application using-
        "php artisan serve"

***************************************************************************************************

Test the API using Postman, thunder client extention or any API testing Software-

To view all Task api - GET http://localhost:8000/api/tasks

To Create Task - POST http://127.0.0.1:8000/api/tasks in Body provide title and description 
                (description is optional)
                {
                    "title": "This is a sample title",
                        "description": "Test Description"
                }

To mark as Complete - PUT http://localhost:8000/api/tasks/{id} -It will change is_completed from false to true. 
                if it is already true then it will display message - Task is already completed.
                If task is not exist then it will display- Task does not exist.

To Delete Task - DELETE http://localhost:8000/api/tasks/{id} - It will delete task
                If task is not exist then it will display- Task does not exist.

***************************************************************************************************

This Repository Includes Database file also
