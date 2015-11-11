;(function(){
  var app = angular.module('Communicant', []);

  app.controller('ListOfMessagesController', ['$scope', '$http', function($scope, $http){
    $http.get("/messages.json")
    .then(function(response){
      $scope.messages = response.data;
    })

  }]); // END ListOfMessagesController

  app.controller('SendMessageController', ['$scope', '$http', function($scope, $http){
    // console.log("Hello?");
    $scope.newMessage = { };
    $scope.submit = function(){
      $http.post("/messages.json", $scope.newMessage);
    };
    $http.get("/messages.json")
    .then(function(response){
      $scope.messages = response.data;
    })
  }]); // END SendMessageController



})(); // END IIFE
