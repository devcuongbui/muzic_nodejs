document.querySelector('#menu-toggle,#menu-overlay').addEventListener('click', function () {
    document.querySelector('body').classList.toggle('open-menu');
});

document.querySelectorAll('#main-nav li a').forEach(function (element) {
    element.addEventListener('click', function () {
        document.querySelectorAll('#main-nav li').forEach(function (li) {
            li.classList.remove('active');
        });
        this.parentNode.classList.add('active');
    });
});

document.querySelectorAll('#tabs li').forEach(function (element) {
    element.addEventListener('click', function () {
        var clickTarget = this.getAttribute('data-target');
        document.querySelectorAll('.tab-target').forEach(function (target) {
            target.classList.remove('targeted');
        });
        document.querySelector('#' + clickTarget).classList.add('targeted');
        document.querySelectorAll('#tabs li').forEach(function (li) {
            li.classList.remove('active');
        });
        this.classList.add('active');
    });
});

document.querySelector('#admin-search input').addEventListener('focus', function () {
    document.querySelector('#header_logo').classList.add('hidden');
});
document.querySelector('#admin-search input').addEventListener('blur', function () {
    document.querySelector('#header_logo').classList.remove('hidden');
});
$(document).ready(function () {
    $('.modal').on('hidden.bs.modal', function () {
        $(this).find('form').trigger('reset');
    });
});




