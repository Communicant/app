;(function(){
  var app = angular.module('Communicant', []);
  console.log("inside angular")
   app.controller('ListOfMessagesController', ['$scope', '$http', '$timeout', '$interval', function($scope, $http, $timeout, $interval){
     //$timeout(function(){$interval}, 2000)
     $http.get("/messages.json")
     .then(function(response){
      $scope.messages = response.data
       console.log("inside ListOfMessagesController")
     })

     $interval(function(){
        $http.get("/messages.json")
        .then(function(response){
        $scope.messages = response.data;
        console.log("probando timeout")
        //console.log("inside the get after the post, just trying to update the list of messages")
        })
      }, 5000)

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
        console.log(response)
        // TODO: What's in response? do i need that?
       });

       $timeout(function(){
          $http.get("/messages.json").then(function(response){
           $scope.messages = response.data;
           console.log("inside the timeout")
          //console.log("inside the get after the post, just trying to update the list of messages")
          })
        }, 5000)
    };

  }]);//END of NewMessageController





})(); // END IIFE
