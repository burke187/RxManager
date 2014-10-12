@rxmanager = angular.module('rxmanager', [])

@rxmanager.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
   when('/users', {
      templateUrl: '../templates/users/user.html',
      controller: 'UserCtrl'
    }).
    when('/users/:userId', {
      templateUrl: '../templates/users/show.html',
      controller: 'UserShowCtrl'
    }).
    when('/users/:id/prescription', {
      templateUrl: '../templates/prescriptions/show.html',
      controller: 'PrescriptionCtrl'
    }).
    otherwise({
      templateUrl: '../templates/index.html',
      controller: 'IndexCtrl'
    })
])