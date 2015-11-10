;(function(){
  var app = angular.module('Communicant', []);
   app.controller('ListOfMessagesController', ['$scope', '$http', function($scope, $http){
     $http.get("/messages.json")
     .then(function(response){
      $scope.messages = response.data
       console.log("inside ListOfMessagesController")
     })
  }]);
  console.log("inside angular")



})(); // END IIFE
