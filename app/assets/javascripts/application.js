// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(function(){
  $('.add-answer').on('click', function(e){
    e.preventDefault();
    var index = $('.answers .form-group').length;
    var answerRow = $('.answers .form-group:last').clone();
    var inputName = 'question[answers_attributes][' + index + '][title]';
    var input = answerRow.find('input');

    input.attr('name', inputName);
    input.attr('value', '');
    answerRow.find('.col-md-1').text(index+1);

    $('.answers').append(answerRow);
    $('.answers').append($('.add-answer'));
  });
});
