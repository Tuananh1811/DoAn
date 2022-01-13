let RegisterButton = document.getElementById('register');
const form = document.getElementById('form');
const userName = document.querySelector('#username');
const email = document.getElementById('email');
const password = document.getElementById('password');
const phoned = document.getElementById('phonenumber');
console.log(phoned);
console.log(password);

function showError(input, message) {
    var div = input.parentElement;
    div.classList.add('error');
    div.classList.remove('success');
    var small = input.nextElementSibling;
    small.innerHTML = message;
}

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
    checkLength(userName, 8, 30);
    checkLength(email, 8, 30);
    checkLength(password, 8, 30);
    checkLength(phoned, 10, 11);
    var nInput = userName.parentElement;
    var eInput = email.parentElement;
    var pInput = password.parentElement;

    if (!eInput.classList.contains('error') &&
        !nInput.classList.contains('error') && !pInput.classList.contains('error')) {
        window.location.assign('./login.html');
    }

});