;(function(){
  var app = angular.module('ExpensesPage', []);

  app.controller('ListExpensesController', ['$scope', '$http', function($scope, $http){
    $http.get("/expenses.json")
    .then(function(response){
      $scope.expenses = response.data;
    })

  }]); // END ListOfExpensesController

  // app.controller('SendExpenseController', ['$scope', '$http', function($scope, $http){
  //   // console.log("Hello?");
  //   $scope.newExpense = { };
  //   $scope.submit = function(){
  //     $http.post("/expenses.json", $scope.newExpense);
  //
  //     $scope.newExpense = { };
  //   };
  //
  //   $http.get("/expenses.json")
  //   .then(function(response){
  //     $scope.expenses = response.data;
  //   })
  // }]); // END SendExpenseController

})(); // END IIFE
