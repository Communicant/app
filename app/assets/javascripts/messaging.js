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

      $scope.newMessage = { };
    };

    $http.get("/messages.json")
    .then(function(response){
      $scope.messages = response.data;
    })
  }]); // END SendMessageController

//   app.controller('GiveNewMessageController', ['$scope', '$http', function dataCtrl($scope, $http, $timeout){
//
//     $scope.data = [];
//
//     (function tick() {
//         $http.get("/messages.json").success(function (data) {
//           console.log("Where are you $timeout???")
//             $scope.data = data;
//             $timeout(tick, 2000);
//         });
//     })();
// }); // END timeout function


// $timeout([fn], [2000], [invokeApply], [Pass]);

  app.controller('ListExpensesController', ['$scope', '$http', function($scope, $http){
    $http.get("/expenses.json")
    .then(function(response){
      $scope.expenses = response.data;
    })
  }]); // END ListExpensesController

  // app.controller('ListPaymentsController', ['$scope', '$http', function($scope, $http){
  //   // console.log('Yo');
  //   $http.get("/expenses.json")
  //   .then(function(response){
  //     $scope.expenses.payments = response.data;
  //   })
  // }]); // END ListPaymentsController

  app.controller('NewExpenseController', ['$scope', '$http', function($scope, $http){
    // console.log("Hello?");
    $scope.newExpense = { };
    $scope.submit = function(){
      $http.post("/expenses.json", $scope.newExpense);

      $scope.newExpense = { };
    };

    $http.get("/expenses.json")
    .then(function(response){
      $scope.expenses = response.data;
    })
  }]); // END NewExpenseController

  app.controller('NewPaymentController', ['$scope', '$http', function($scope, $http){

    $scope.newPayment = { };
    $scope.submit = function(){
      $http.post("/payments.json", $scope.newPayment);

      $scope.newPayment = { };
    };

    $http.get("/payments.json")
    .then(function(response){
      $scope.expenses = response.data;
    })
  }]); // END NewPaymentController

})(); // END IIFE

// SOURCE for $timeout function: http://stackoverflow.com/questions/13671031/server-polling-with-angularjs
