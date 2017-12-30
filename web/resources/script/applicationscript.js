var subject = false;
var body = false;

/**
 * 
 * @param {type} subjectValue
 * @returns {undefined}
 */
var bodyValidator = function (bodyValue) {

    bodyValue = bodyValue.trim();
    var bodyField = document.getElementById('apply_body');

    if (bodyValue.length !== 0) {

        bodyField.style.borderWidth = '2px';
        bodyField.style.borderColor = '#4ef442';
    } else {

        bodyField.style.borderWidth = '2px';
        bodyField.style.borderColor = '#fc0000';
    }
};


/**
 * 
 * @param {type} subjectValue
 * @returns {undefined}
 */
var subjectValidator = function (subjectValue) {

    subjectValue = subjectValue.trim();
    var subjectField = document.getElementById('apply_subject');

    if (subjectValue.length !== 0) {

        subjectField.style.borderWidth = '2px';
        subjectField.style.borderColor = '#4ef442';
    } else {

        subjectField.style.borderWidth = '2px';
        subjectField.style.borderColor = '#fc0000';
    }
};

/**
 * 
 * @returns {Boolean}
 */
var applicationInsertValidator = function () {

    if (subject && body) {

        return true;
    }

    return false;
};