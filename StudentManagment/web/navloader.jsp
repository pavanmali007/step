<%-- 
    Document   : students
    Created on : 05-Jul-2023, 9:15:34 pm
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <style>
            /*            body {
                            background-image: url("assets/bg11.jpg");
                        }*/
            hr {
                border: 1px solid green;
                border-radius: 5px;
            }
        </style>

        <!--        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
                
                       
                        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
                
                       
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>  -->



        <!-- <style>
            @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                font-family: 'Inter', sans-serif;
            }
            .formbold-mb-3 {
                margin-bottom: 15px;
            }
            .formbold-relative {
                position: relative;
            }
            .formbold-opacity-0 {
                opacity: 0;
            }
            .formbold-stroke-current {
                stroke: currentColor;
            }
            #supportCheckbox:checked ~ div span {
                opacity: 1;
            }

            .formbold-main-wrapper {
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 48px;
            }

            .formbold-form-wrapper {
                margin: 0 auto;
                max-width: 570px;
                width: 100%;
                background: white;
                padding: 40px;
            }

            .formbold-img {
                margin-bottom: 45px;
            }

            .formbold-form-title {
                margin-bottom: 30px;
            }
            .formbold-form-title h2 {
                font-weight: 600;
                font-size: 28px;
                line-height: 34px;
                color: #07074d;
            }
            .formbold-form-title p {
                font-size: 16px;
                line-height: 24px;
                color: #536387;
                margin-top: 12px;
            }

            .formbold-input-flex {
                display: flex;
                gap: 20px;
                margin-bottom: 15px;
            }
            .formbold-input-flex > div {
                width: 50%;
            }
            .formbold-form-input {
                text-align: center;
                width: 100%;
                padding: 12px 22px;
                border-radius: 5px;
                border: 1px solid #dde3ec;
                background: #ffffff;
                font-weight: 500;
                font-size: 16px;
                color: #536387;
                outline: none;
                resize: none;
            }
            .formbold-form-input:focus {
                border-color: #6a64f1;
                box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
            }
            .formbold-form-label {
                color: #536387;
                font-size: 14px;
                line-height: 24px;
                display: block;
                margin-bottom: 10px;
            }

            .formbold-checkbox-label {
                display: flex;
                cursor: pointer;
                user-select: none;
                font-size: 16px;
                line-height: 24px;
                color: #536387;
            }
            .formbold-checkbox-label a {
                margin-left: 5px;
                color: #6a64f1;
            }
            .formbold-input-checkbox {
                position: absolute;
                width: 1px;
                height: 1px;
                padding: 0;
                margin: -1px;
                overflow: hidden;
                clip: rect(0, 0, 0, 0);
                white-space: nowrap;
                border-width: 0;
            }
            .formbold-checkbox-inner {
                display: flex;
                align-items: center;
                justify-content: center;
                width: 20px;
                height: 20px;
                margin-right: 16px;
                margin-top: 2px;
                border: 0.7px solid #dde3ec;
                border-radius: 3px;
            }

            .formbold-btn {
                font-size: 16px;
                border-radius: 5px;
                padding: 14px 25px;
                border: none;
                font-weight: 500;
                background-color: #6a64f1;
                color: white;
                cursor: pointer;
                margin-top: 25px;
            }
            .formbold-btn:hover {
                box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
            }


            /******
                TEMPORARY 
                STYLING 
                FOR 
                TABLES
            ******/ 
            
            table {
                border-collapse: collapse;
                margin-top: 20px;
                margin-right: 10px;
                margin-left: 10px;
                margin-bottom: 10px;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            
            .tableButton{
                padding: 5px;
            }
            
            #studActionNav{
                border: 2px solid black;
            }
            
            #examActionNav{
                border: 2px solid black;
            }
            
            #uploadBtn{
                margin-bottom: 40px;
            }
            
            #fileInputDiv{
                display: flex;
                justify-content: center;
            }
            
            #fileInput{
                width: 500px;
            }
        </style>    -->



    </head>
    <body>
        <%
            String processAct = (String) request.getAttribute("process");
        %>


        <%
            switch (processAct) {
                case "stud":
        %>
        <header style="margin: 7px; padding: 5px 0px;" class="text-gray-600 body-font">
            <div class="mr-4 mx-auto flex flex-wrap pl-7 flex-row md:flex-row items-center">
                <nav class="flex lg:w-2/5 flex-wrap items-center md:ml-none">
                    <a style='font-size: inherit; font-family: inherit;' class="mr-5 hover:text-gray-900" onclick="studcont('studadd')">Add Student</a>
                    <a style='font-size: inherit; font-family: inherit;' class="mr-5 hover:text-gray-900" onclick="studcont('studedit')">Edit Student</a>
                    <a style='font-size: inherit; font-family: inherit;' class="mr-5 hover:text-gray-900" onclick="studcont('studdelete')">Delete Student</a>
                    <a style='font-size: inherit; font-family: inherit;' class="hover:text-gray-900" onclick="studcont('studview')">View Student</a>
                </nav>





                <!--                <a style="visibility: hidden;
                                          " class="DashLOGO flex order-first lg:order-none lg:w-1/5 title-font font-medium items-center text-gray-900 lg:items-center lg:justify-center mb-4 md:mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
                                    <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
                                    </svg>
                                    <span class="ml-3 text-xl">Dashboard</span>
                                </a>-->




                <!--                <div class="lg:w-2/5 inline-flex lg:justify-end ml-5 lg:ml-0">
                                    <button class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-200 rounded text-base mt-4 md:mt-0">
                                        Logout
                                        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
                                        <path d="M5 12h14M12 5l7 7-7 7"></path>
                                        </svg>
                                    </button>
                                </div>-->
            </div>
        </header>
        <hr>

        <%
                break;
            case "exam":
        %>
        <ul id="examActionNav" class="nav">
            <li class="nav-item">
                <a class="nav-link" onclick="add_exam_click()">Add Exam</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" onclick="edit_exam_click()">Edit Exam</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" onclick="del_exam_click()">Delete Exam</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" onclick="view_exam_click()">View Exam</a>
            </li>
        </ul>

        <%
                    break;
            }
        %>

        <div id="content_space">
        </div>
        <script><!-- for tailwind navbars -->
            // Initialization for ES Users
            import {
            Collapse,
                    Dropdown,
                    initTE,
            } from "tw-elements";
            initTE({Collapse, Dropdown});
        </script>
        <script src="js/login.js">
        </script>
    </body>
</html>




