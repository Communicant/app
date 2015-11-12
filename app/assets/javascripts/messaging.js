



;(function(){

  var app = angular.module('Communicant', ['ngRoute']);
  console.log("inside angular")
  app.controller('ListOfMessagesController', ['$scope', '$http', '$routeParams', '$timeout', '$interval', function($scope, $http, $routeParams, $timeout, $interval){
     //var Id = $routeParams.id - 1; //Id to make a difference with id

     function updateMessages(){
      return $http.get("/messages.json")
        .then(function(response){
          $scope.messages = response.data
          console.log("inside ListOfMessagesController")
          console.log(response.data.length)
      })
     }

     $interval(function(){
        $http.get("/messages.json")
        .then(function(response){
        $scope.messages = response.data;
        console.log("probando timeout")
        //console.log("inside the get after the post, just trying to update the list of messages")
        })
      }, 5000);

   }]);//END of ListOfMessagesController
  app.controller('NewMessageController', ['$scope', '$http', '$timeout', '$interval',  function($scope, $http, $timeout, $interval){
    console.log("inside NewMessageController")
    $scope.newMessage = { };
    $scope.submit = function(){
      console.log("after submit")
      $http.post("/messages.json", $scope.newMessage)
        .then(function(response){
          $scope.newMessage = { };
          console.log('look what I got!', response)
          // TODO: What's in response? do i need that?
          // FIXME: API should return me the message I just created _as JSON_
          // $scope.messages.push(response.data)

          return $http.get("/messages.json").then(function(response){
            $scope.messages = response.data;
            console.log("inside the timeout")
            //console.log("inside the get after the post, just trying to update the list of messages")
          })
        })
    };

  }]);//END of NewMessageController

})(); // END IIFE
