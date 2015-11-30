;(function(){

  var app = angular.module('Communicant', ['ngRoute']);
//getting data from messages.json
  app.controller('ListOfMessagesController', ['$scope', '$http', '$routeParams', '$interval', function($scope, $http, $routeParams, $interval){

     function updateMessages(){
      return $http.get("/messages.json")
        .then(function(response){
          $scope.messages = response.data
          })
          //console.log("inside ListOfMessagesController")
     }

// update the messages page every 2 seconds for new messages
     $interval(function(){
        $http.get("/messages.json")
        .then(function(response){
        $scope.messages = response.data;
        //console.log("probando timeout")
        })
      }, 2000);


   }]);//END of ListOfMessagesController

//posting new message in the json
  app.controller('NewMessageController', ['$scope', '$http'  function($scope, $http){
    console.log("inside NewMessageController")
    $scope.newMessage = {
    };
    $scope.submit = function(){
      console.log("after submit")
      $http.post("/messages.json", $scope.newMessage)
        .then(function(response){
          $scope.newMessage = { };
          console.log("post works")
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






  app.controller('ListExpensesController', ['$scope', '$http', function($scope, $http){
    //Server call to get expenses
    $http.get("/expenses.json")
    .then(function(response){
      $scope.expenses = response.data;
    })

    //New payment model
    $scope.newPayment = {
      payment : {
        amount : 0,
        expense_id : 0
      }
    };

    //New expense model
    $scope.newExpense = { };

    $scope.submitPayment = function(expense_id){
      $scope.newPayment.payment.expense_id = expense_id;
      $http.post("/payments.json", $scope.newPayment).then(function(){
        $http.get("/expenses.json")
        .then(function(response){
          $scope.expenses = response.data;
        })
        $scope.newPayment = { };
      },function(err){
        console.log(err);
        //Server call failed
      });
    };

    $scope.submitExpense = function(){
      console.log('Submitting expense!!!');
      $http.post("/expenses.json", $scope.newExpense).then(function(){
        $http.get("/expenses.json")
        .then(function(response){
          $scope.expenses = response.data;
        })
      }, function(err){
        console.log(err);
        //Server call failed
      });
      $scope.newExpense = { };
    };

  }]); // END ListExpensesController



})(); // END IIFE

// SOURCE for $timeout function: http://stackoverflow.com/questions/13671031/server-polling-with-angularjs
