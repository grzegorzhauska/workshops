// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

  function review_form_toggle() {
    $('#review_form').toggle();
    $('.show_review_form').toggle();
    $('.hide_review_form').toggle();
  }

  $('#review_form').hide();
  $('.hide_review_form').hide();

  $('.show_review_form').click(review_form_toggle);
  $('.hide_review_form').click(review_form_toggle);
  
 });