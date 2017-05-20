// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .

// $(document).ready(function () {
//   $(document).on("click", ".start", function(){
//     link = this.getAttribute('href');
//     setInterval(refreshPartial(link), 1000)
//   })
// });
//
// function refreshPartial(link) {
//   console.log(link);
//
//   $.ajax({
//     url: link
//   })
// }

$(document).ready(function() {
  $(document).on("click", ".start", function(){
    debugger;
    var currentUrl = $(this).attr("href");

    var gameID = currentUrl.substr(currentUrl.lastIndexOf('/') + 1);

    setInterval(function() {
      $.ajax({
        type: "GET",
        url: "/game/" + gameID
      });
    }, 3000);
  })
});
