/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function checkEmpty(value, key) {
    var va = document.getElementById(value).value;
    if (va === "") {
        alert(key + " is empty");
        return false;
    }
    return true;
}

function checkId(value, key){
    var va = document.getElementById(value).value;
    if (va === "Pavan_Mali"){
        return true;
    }
    else{
        alert(key+" is invalid");
        return false;
    }
}

function checkPass(value, key){
    var va = document.getElementById(value).value;
    if (va === "pavan1234"){
        return true;
    }
    else{
        alert(key+" is invalid");
        return false;
    }
}

function vali(param) {
    if(param === "log"){
        var result1 = checkEmpty("username", "Username") && checkEmpty("password", "Password");
        if (result1) {
            var result2 = checkId("username", "Username");
            if(result2){
                var result3 = checkPass("password", "Password");
                if(result3){
                    window.location.href = "dashboard.jsp";
                    document.loginForm.reset();
                    return false;
                }
            }
        }
        return false;
    }
    else if(param === "regi"){
        var result1 = checkEmpty("username", "Username")&& checkEmpty("email", "Email") && checkEmpty("password", "Password");
        if (result1) {
            alert("registration successful");
            window.location.href = "index.jsp";
            document.studRegiForm.reset();
        }
        return false;
    }
}

//ajax
function ajaxCall(method, url, data, destination,isHtml) {
    var xhttp = new XMLHttpRequest();


    // event
    xhttp.onload = function () {
        if(isHtml){
               document.getElementById(destination).innerHTML = this.responseText;

        }else{
              document.getElementById(destination).value = this.responseText;
        }
    };

    xhttp.open(method, url, false);
    xhttp.setRequestHeader('content-type', 'application/x-www-form-urlencoded');

    xhttp.send(data);
}

function dash_navclick(param){
    switch(param){
        case "students":
            var boddi = document.getElementById('boddi');
//            boddi.classList.add('blur-sm');
            ajaxCall('POST', 'DashCheck.fin','process=stud','nav_space','html');
            break;
            
        case "exams":
            ajaxCall('POST', 'DashCheck.fin','process=exam','nav_space','html');
            break;
            

    }
}


function StudRegiClick(){
    var result = checkEmpty("firstname", "Name") && checkEmpty("address", "Address") && checkEmpty("email", "Email") && checkEmpty("city", "City") && checkEmpty("state", "State") && checkEmpty("country", "Country");
    if(result){
        document.addStudForm.reset();
        return false;
    }
    else{
        return false;
    }
    return false;
}

function studcont(param){
    ajaxCall('POST', 'NavCheck.fin', 'process='+param, 'content_space', 'ishtml');
}

function data_manipulate(){
    alert("work in progress");
}

function add_exam_click(){
        ajaxCall('POST', 'NavCheck.fin', 'process=add_exam', 'content_space', 'html');
}

function edit_exam_click(){
    alert("edit_exam_click");
}

function del_exam_click(){
        alert("del_exam_click");
}

function view_exam_click(){
    alert("view_exam_click");
}