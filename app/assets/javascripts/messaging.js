;(function(){
  var app = angular.module('Communicant', []);
  console.log("inside angular")
   app.controller('ListOfMessagesController', ['$scope', '$http', function($scope, $http){
     $http.get("/messages.json")
     .then(function(response){
      $scope.messages = response.data
       console.log("inside ListOfMessagesController")
     })
   }]);//END of ListOfMessagesController
  app.controller('NewMessageController', ['$scope', '$http', function($scope, $http){
    console.log("inside NewMessageController")
    $scope.newMessage = { };
    $scope.submit = function(){
      console.log("after submit")
      // $scope.messages.push({body:}) if I don't have json I can play with this.
      $http.post("/messages.json", $scope.newMessage);
    };
    $http.get("/messages.json")
     .then(function(response){
       $scope.messages = response.data;
     })
  }]);//END of NewMessageController





})(); // END IIFE
