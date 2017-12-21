/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//determine inputed field is id
var id = false;

//determine inputed field is email
var email = false;

//determine inputed field is password and not empty
var password = false;


/**
 * 
 * Email or username validator function
 * Color the border with 'red' color if the input is empty or invalid email
 * as well as indicate either 'id' or 'email' is ok, 
 * such that login submssion can be forwarded to server
 */
var idEmailValidator = function () {

    var redField = false;
    var field = document.getElementsByName("loginid")[0];

    if (field.value !== '') {

        if (field.value.indexOf('@') !== -1) {

            //write code to validate email
        } else {

            id = true;
        }
    } else {

        //if field is empty
        redField = true;
    }

    if (redField) {

        field.style.borderColor = "red";
    } else {

        field.style.borderColor = "#ccc";
    }
};


/**
 * 
 * Password validator function
 * Color the border with 'red' color if the input is empty
 * as well as indicate 'password' is ok, 
 * such that login submssion can be forwarded to server
 */

var passwordValidator = function () {

    var field = document.getElementsByName("password")[0];

    if (field.value !== '') {

        password = true;
        field.style.borderColor = "#ccc";
    } else {

        password = false;
        field.style.borderColor = "red";
    }
};


var loginRequest = function () {

    if ((id || email) && password) {

        //write the code if the inputs are valid

    } else {

        if (!id && !email) {

            idEmailValidator();
        }

        if (!password) {

            passwordValidator();
        }
    }
};
