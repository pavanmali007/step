<%-- 
    Document   : studentmod
    Created on : 17-Jul-2023, 8:13:21 pm
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body>
        
        <%
            String processAct = (String)request.getAttribute("process");
        %>
        
        <%
                switch(processAct){
                case "studadd":
        %>


        <div class="formbold-main-wrapper">
            <!-- Author: FormBold Team -->
            <!-- Learn More: https://formbold.com -->
            <div class="formbold-form-wrapper">
                <audio autoplay>
                    <source src="assets/Spider_Man_Background_music_Ringtone...._5rqPKAzD-c4_140.mp3" type="audio/mpeg">
                </audio>
                <img width="100px" src="assets/sticker.png">

                <form name="addStudForm">
                    <div class="formbold-form-title">
                        <h2 class="">Add Student</h2>
                        <p>
                            fill all the details below.
                        </p>
                    </div>

                    <div class="formbold-input-flex">
                        <div>
                            <label for="firstname" class="formbold-form-label">
                                First name
                            </label>
                            <input
                                type="text"
                                name="firstname"
                                id="firstname"
                                class="formbold-form-input"
                                />
                        </div>
                        <div>
                            <label for="address" class="formbold-form-label"> Address </label>
                            <input
                                type="text"
                                name="address"
                                id="address"
                                class="formbold-form-input"
                                />
                        </div>
                    </div>

                    <div class="formbold-input-flex">
                        <div>
                            <label for="email" class="formbold-form-label"> Email </label>
                            <input
                                type="email"
                                name="email"
                                id="email"
                                class="formbold-form-input"
                                />
                        </div>
                        <div>
                            <label for="city" class="formbold-form-label"> City </label>
                            <input
                                type="text"
                                name="city"
                                id="city"
                                class="formbold-form-input"
                                />
                        </div>
                    </div>


                    <div class="formbold-input-flex">
                        <div>
                            <label for="state" class="formbold-form-label"> State/Prvince </label>
                            <input
                                type="text"
                                name="state"
                                id="state"
                                class="formbold-form-input"
                                />
                        </div>
                        <div>
                            <label for="country" class="formbold-form-label"> Country </label>
                            <input
                                type="text"
                                name="country"
                                id="country"
                                class="formbold-form-input"
                                />
                        </div>
                    </div>


                    <button class="formbold-btn" onclick="return StudRegiClick()">Register Now</button>
                </form>
            </div>
        </div>
        <hr>
        <div id="fileInputDiv">
            <input id="fileInput" type="file" class="formbold-form-input">
        </div>
        <center>
            <button class="formbold-btn" id="uploadBtn">Upload</button>
        </center>

        <%  
                break;
                case "studedit":
        %>
<!--        <table>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>City</th>
                <th>State</th>
                <th>Country</th>
                <th>Button</th>
            </tr>
            <tr>
                <td>Pavan</td>
                <td>Pandesara</td>
                <td>pavan@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
                <td><button class="tableButton" onclick="data_manipulate()" >Edit</button></td>
            </tr>
            <tr>
                <td>Bhavesh</td>
                <td>Udhna</td>
                <td>bhavesh@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
                <td><button class="tableButton" onclick="data_manipulate()">Edit</button></td>
            </tr>
            <tr>
                <td>Shaizan</td>
                <td>Limbayat</td>
                <td>shaizan@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
                <td><button class="tableButton" onclick="data_manipulate()">Edit</button></td>
            </tr>
        </table>-->



<div class="flex flex-col">
  <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
    <div class="inline-block min-w-full py-2 sm:px-6 lg:px-8">
      <div class="overflow-hidden">
        <table class="min-w-full text-left text-sm font-light">
          <thead class="border-b font-medium dark:border-neutral-500">
            <tr>
              <th scope="col" class="px-6 py-4">Name</th>
              <th scope="col" class="px-6 py-4">Address</th>
              <th scope="col" class="px-6 py-4">Email</th>
              <th scope="col" class="px-6 py-4">State</th>
              <th scope="col" class="px-6 py-4">City</th>
              <th scope="col" class="px-6 py-4">Button</th>
            </tr>
          </thead>
          <tbody>
            <tr
              class="border-b transition duration-300 ease-in-out hover:bg-neutral-100 dark:border-neutral-500 dark:hover:bg-neutral-600">
              <td class="whitespace-nowrap px-6 py-4 font-medium">Pavan</td>
              <td class="whitespace-nowrap px-6 py-4">Pandesara</td>
              <td class="whitespace-nowrap px-6 py-4">P@gmail</td>
              <td class="whitespace-nowrap px-6 py-4">Gujra.com/td>
              <td class="whitespace-nowrap px-6 py-4">Gujarat</td>
              <td class="whitespace-nowrap px-6 py-4"><button class="tableButton" onclick="data_manipulate()" >Edit</button></td>
            </tr>
            <tr
              class="border-b transition duration-300 ease-in-out hover:bg-neutral-100 dark:border-neutral-500 dark:hover:bg-neutral-600">
              <td class="whitespace-nowrap px-6 py-4 font-medium">2</td>
              <td class="whitespace-nowrap px-6 py-4">Jacob</td>
              <td class="whitespace-nowrap px-6 py-4">Thornton</td>
              <td class="whitespace-nowrap px-6 py-4">@fat</td>
              <td class="whitespace-nowrap px-6 py-4">@kuch</td>
              <td class="whitespace-nowrap px-6 py-4">@fabhit</td>
            </tr>
            <tr
              class="border-b transition duration-300 ease-in-out hover:bg-neutral-100 dark:border-neutral-500 dark:hover:bg-neutral-600">
              <td class="whitespace-nowrap px-6 py-4 font-medium">3</td>
              <td class="whitespace-nowrap px-6 py-4">Larry</td>
              <td class="whitespace-nowrap px-6 py-4">Wild</td>
              <td class="whitespace-nowrap px-6 py-4">@twitter</td>
              <td class="whitespace-nowrap px-6 py-4">@hid</td>
              <td class="whitespace-nowrap px-6 py-4">@jiijiej</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>






      
        <%
                break;
                case "studdelete":
        %>
        <table>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>City</th>
                <th>State</th>
                <th>Country</th>
                <th>Button</th>
            </tr>
            <tr>
                <td>Pavan</td>
                <td>Pandesara</td>
                <td>pavan@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
                <td><button class="tableButton" onclick="data_manipulate()">Delete</button></td>
            </tr>
            <tr>
                <td>Bhavesh</td>
                <td>Udhna</td>
                <td>bhavesh@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
                <td><button class="tableButton" onclick="data_manipulate()">Delete</button></td>
            </tr>
            <tr>
                <td>Shaizan</td>
                <td>Limbayat</td>
                <td>shaizan@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
                <td><button class="tableButton" onclick="data_manipulate()">Delete</button></td>
            </tr>
        </table>
        
        <%
                break;
                case "studview":
        %>
        <table>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>City</th>
                <th>State</th>
                <th>Country</th>
            </tr>
            <tr>
                <td>Pavan</td>
                <td>Pandesara</td>
                <td>pavan@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
            </tr>
            <tr>
                <td>Bhavesh</td>
                <td>Udhna</td>
                <td>bhavesh@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
            </tr>
            <tr>
                <td>Shaizan</td>
                <td>Limbayat</td>
                <td>shaizan@gmail.com</td>
                <td>Surat</td>
                <td>Gujarat</td>
                <td>India</td>
            </tr>
        </table>
        
    <%
        break;
        case "add_exam":
    %>
    <center>
        <h3>Add Exam</h3>
    </center>
    <%           
        }
    %>
    </body>
</html>
