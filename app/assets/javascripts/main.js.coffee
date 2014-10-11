@rxmanager = angular.module('rxmanager', [])

@rxmanager.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
   when('/users', {
      templateUrl: '../templates/users/index.html',
      controller: 'UserIndexCtrl'
    }).
    when('/users/:id', {
      templateUrl: '../templates/users/show.html',
      controller: 'UserShowCtrl'
    }).
    when('/users/:id/prescription', {
      templateUrl: '../templates/prescriptions/show.html',
      controller: 'PrescriptionShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])