;(function(){

  var app = angular.module('Communicant', []);

 app.controller('ListOfMessagesController', ['$scope', '$http', '$timeout', '$interval', function($scope, $http, $timeout, $interval){
   console.log("inside ListOfMessagesController")


     $http.get("/messages.json")
       .then(function(response){
         $scope.messages = response.data;
         console.log(response.data.length)
        })

  }]);//END of ListOfMessagesController

  app.controller('UpdateMessagesController', ['$scope', '$http', function($scope, $http){
    console.log("inside UpdateMessagesController")

    $scope.$watch('messages.length', function(NewValue, OldValue){
      console.log("inside watch")
      return
      $http.get("/messages.json")
        .then(function(response){
          $scope.messages = response.data;})
      },true);





  }]); //END of UpdateMessagesController


 app.controller('NewMessageController', ['$scope', '$http', '$interval',  function($scope, $http, $interval){
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
         // TODO: get the last messages posted not all of them
         // FIXME: API should return me the message I just created _as JSON_
         // $scope.messages.push(response.data)
       });
    //  $http.get("/messages.json")
    //     .then(function(response){
    //       $scope.messages = response.data;
    //        console.log("inside the timeout")
    //        //console.log("inside the get after the post, just trying to update the list of messages")
    //      });

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


})(); // END IIFE

// SOURCE for $timeout function: http://stackoverflow.com/questions/13671031/server-polling-with-angularjs
