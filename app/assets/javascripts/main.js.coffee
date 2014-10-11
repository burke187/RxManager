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
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])