// @ts-nocheck
var submit = document.getElementById('submit');

const form = document.getElementById('form-login');
const userName = document.getElementById('username');
const passWord = form.querySelector('#password');
const checkBox = form.querySelector('#checkbox');
// show error when input field is in correct
function showError(input, message) {
    var div = input.parentElement;
    div.classList.add('error');
    div.classList.remove('success');
    var small = input.nextElementSibling;
    small.innerHTML = message;
}

// change border-color to green if input field is correct.
function showSuccess(input) {
    var div = input.parentElement;
    div.classList.add('success');
    div.classList.remove('error');
}



function checkLength(input, minLength, maxLength) {
    if (input.value.trim() == '') {
        showError(input, `${input.attributes.name.value} is required!`);
    } else {
        showSuccess(input);
        if (input.value.trim().length > maxLength) {
            showError(input, `${input.attributes.name.value} must be less than ${maxLength}`);
        }
        if (input.value.trim().length < minLength && input.value.trim().length > 0) {

            showError(input, `${input.attributes.name.value} must be greater than ${minLength}`);
        }
    }



}

form.addEventListener('submit', function(e) {
    e.preventDefault();
    checkLength(userName, 8, 50);
    checkLength(passWord, 8, 30);
    if (userName.value.length >= 8 && userName.value.length < 50 && password.value.length >= 8 &&
        password.value.length < 30) {

        window.location.assign('./trangchu.html');

    }

});