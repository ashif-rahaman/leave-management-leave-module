var first_name = false;
var last_name = false;
var username = false;
var email = false;
var password = false;
var repeat_password = false;

/**
 * 
 * @returns {undefined}
 */
var firstNameValidator = function (str) {

    if (str.length != 0) {

        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {

            console.log('Ready state' + xmlhttp.readyState);
            console.log('Status' + xmlhttp.status);

            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

                console.log('response came');
                console.log(xmlhttp.responseText);
            }
        };

        xmlhttp.open('GET', 'getusers?name=' + str, true);
        xmlhttp.send();

        console.log('request sent');
    }
};

/**
 * 
 * @returns {undefined}
 */
var lastNameValidator = function () {

    var field = document.getElementsByName('last_name')[0];
    console.log(field.value);
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