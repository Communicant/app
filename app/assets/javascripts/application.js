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
//= require bootstrap-sprockets
//= require angular/angular
//= require angular-route
//= require angular-ui-router/release/angular-ui-router
//= require angular-spinners
//= require_tree .


;(function(){

})();
// END of IIFE JS


;(function(){

  console.log("inside js")

  $(document).ready(function () {
    var url = window.location

    var tabHeader = $('a.header').filter(function() {
      return this.href == url;
    })
    var tabHeader2 = $('a.head-resp').filter(function() {
      return this.href == url;
    })

    tabHeader.addClass('stay-blue').siblings().removeClass('stay-blue');
    tabHeader2.addClass('stay-blue').siblings().removeClass('stay-blue');

  })
})();
