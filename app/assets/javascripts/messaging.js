;(function(){
  var app = angular.module('Communicant', []);
  console.log("inside angular")
   app.controller('ListOfMessagesController', ['$scope', '$http', '$timeout', '$interval', function($scope, $http, $timeout, $interval){
     $timeout(function(){$interval}, 2000)
     $http.get("/messages.json")
     .then(function(response){
      $scope.messages = response.data
       console.log("inside ListOfMessagesController")
     })
   }]);//END of ListOfMessagesController
  app.controller('NewMessageController', ['$scope', '$http', '$timeout', '$interval',  function($scope, $http, $timeout, $interval){
    console.log("inside NewMessageController")
    $scope.newMessage = { };
    $scope.submit = function(){
      console.log("after submit")
      // $scope.messages.push({body:}) if I don't have json I can play with this.
      $http.post("/messages.json", $scope.newMessage)
      .then(function(response){
        $scope.newMessage = { };
        $timeout(function(){$interval}, 2000)
       });
     $http.get("/messages.json")
      .then(function(response){
        $scope.messages = response.data;
      })

    };

  }]);//END of NewMessageController





})(); // END IIFE
