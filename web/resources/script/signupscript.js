var first_name = false;
var last_name = false;
var username = false;
var email = false;
var password = false;
var repeat_password = false;
/**
 * 
 * @param {type} firstName
 * @returns {undefined}
 */
var firstNameValidator = function (firstName) {

    firstName = firstName.trim();
    var firstName_field = document.getElementsByName('first_name')[0];
    var sign = document.getElementById('first_name_sign');
    if (firstName.length != 0) {

        first_name = true;
        firstName_field.style.borderColor = '#4ef442';
        sign.innerHTML = ' &#x2714;';
        sign.style.color = '#4ef442';
    } else {

        first_name = false;
        firstName_field.style.borderColor = '#fc0000';
        sign.innerHTML = ' &#x2716;';
        sign.style.color = '#fc0000';
    }
};
/**
 * 
 * @param {type} str
 * @returns {undefined}
 */
var lastNameValidator = function (lastName) {

    lastName = lastName.trim();
    var sign = document.getElementById('last_name_sign');
    var lastName_field = document.getElementsByName('last_name')[0];
    if (lastName.length != 0) {

        last_name = true;
        lastName_field.style.borderColor = "#4ef442";
        sign.innerHTML = ' &#x2714;';
        sign.style.color = '#4ef442';
    } else {

        last_name = false;
        lastName_field.style.borderColor = "#fc0000";
        sign.innerHTML = ' &#x2716;';
        sign.style.color = '#fc0000';
    }
};
/**
 * 
 * @param {type} str
 * @returns {undefined}
 */
var userNameValidator = function (str) {

};
/**
 * 
 * @param {type} str
 * @returns {undefined}
 */
var emailValidator = function (str) {

};
/**
 * 
 * @param {type} str
 * @returns {undefined}
 */
var passwordValidator = function (passwordValue) {

    var passwordLengthMsg = document.getElementById('password_length_msg');
    var passwordField = document.getElementsByName('password')[0];
    var sign = document.getElementById('password_sign');
    if (passwordValue.length < 8) {

        password = false;
        passwordField.style.borderColor = '#fc0000';
        sign.innerHTML = ' &#x2716;';
        sign.style.color = '#fc0000';
        passwordLengthMsg.innerHTML = ' (at least 8 character long)';
        passwordLengthMsg.style.color = '#fc0000';
        passwordLengthMsg.style.visibility = 'visible';
    } else {

        password = true;
        passwordField.style.borderColor = '#4ef442';
        sign.innerHTML = ' &#x2714;';
        sign.style.color = '#4ef442';
        passwordLengthMsg.style.visibility = 'hidden';
    }

    var repeatPasswordValue = document.getElementsByName('repeat_password')[0].value;
    repeatPasswordValidator(repeatPasswordValue);

};
/**
 * 
 * @param {type} str
 * @returns {undefined}
 */
var repeatPasswordValidator = function (repeatPasswordValue) {

    var repeatPasswordField = document.getElementsByName('repeat_password')[0];
    var sign = document.getElementById('repeat_password_sign');
    var passwordField = document.getElementsByName('password')[0];

    if (repeatPasswordValue.length != 0 && repeatPasswordValue == passwordField.value) {

        repeat_password = true;
        repeatPasswordField.style.borderColor = '#4ef442';
        sign.innerHTML = ' &#x2714;';
        sign.style.color = '#4ef442';
        return;
    }


    repeat_password = false;
    repeatPasswordField.style.borderColor = '#fc0000';
    sign.innerHTML = ' &#x2716;';
    sign.style.color = '#fc0000';
};
/**
 * 
 * @returns {Boolean}
 */
var signupValidation = function () {

    if (first_name && last_name && username && email && password && repeat_password) {

        return true;
    }

    return false;
};