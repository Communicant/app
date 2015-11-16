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
      }, 2000);

   }]);//END of ListOfMessagesController
  app.controller('NewMessageController', ['$scope', '$http', '$timeout', '$interval',  function($scope, $http, $timeout, $interval){
    console.log("inside NewMessageController")
    $scope.newMessage = {
      //body: "select_option"
    };
    $scope.submit = function(){
      console.log("after submit")
      $http.post("/messages.json", $scope.newMessage)
        .then(function(response){
          $scope.newMessage = { };
          console.log("post works")
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

  // app.controller('ListPaymentsController', ['$scope', '$http', function($scope, $http){
  //   // console.log('Yo');
  //   $http.get("/expenses.json")
  //   .then(function(response){
  //     $scope.expenses.payments = response.data;
  //   })
  // }]); // END ListPaymentsController

  // app.controller('NewExpenseController', ['$scope', '$http', function($scope, $http){
  //   // console.log("Hello?");
  //   $scope.newExpense = { };
  //   $scope.submitExpense = function(){
  //     $http.post("/expenses.json", $scope.newExpense);
  //     $scope.newExpense = { };
  //   };
  //
  //
  //   $http.get("/expenses.json")
  //   .then(function(response){
  //     $scope.expenses = response.data;
  //   })
  // }]); // END NewExpenseController

  // app.controller('toggleExpenseController', ['$scope', '$http', function($scope, $http){
  //
  //   $http.get("/expenses.json").success(function(data) {
  //   $scope.expenseItem = data.results;
  //   $('#expense').show();
  // });
  //
  //   $scope.showDetail = function (expense){
  //
  //     if ($scope.active != expense) {
  //       $scope.active = expense;
  //     }
  //     else {
  //       $scope.active = null;
  //     }
  //   };
  // }]); // END toggleExpenseController

})(); // END IIFE

// SOURCE for $timeout function: http://stackoverflow.com/questions/13671031/server-polling-with-angularjs
