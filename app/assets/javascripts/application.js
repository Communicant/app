// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular/angular
//= require angular-route
//= require angular-ui-router/release/angular-ui-router
//= require_tree .


//home page login for the drop down login option
;(function(){
  $('a[href="#login"]').on('click', function (){
    $('#login').toggleClass('active').siblings().removeClass('active');
  });
})();
// END of IIFE JS


//scroll the messages box to show the bottom first
;(function(){
  //$("#scroll-bottom").scrollTop($("#scroll-bottom").scrollHeight);
  //$(".chatbox").scrollTop(600);
  //var messageBox = document.getElementById('#scroll-bottom');
  //messageBox.scrollTop = messageBox.scrollHeight;
  console.log("inside js")
  //$('ul.messaging-list').scrollTop($('ul.messaging-list li:last-child').position().top);

})();
