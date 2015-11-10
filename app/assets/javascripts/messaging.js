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
    $scope.submit = function(){
    $http.post("/messages.json", $scope.newMessage); //I know it is not going to work for now
    $scope.newMessage = { };
    };
    $http.get("/messages.json")
     .then(function(response){
       $scope.event = response.data;
     })
  }]);//END of NewMessageController





})(); // END IIFE
