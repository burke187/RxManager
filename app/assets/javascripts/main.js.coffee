@rxmanager = angular.module('rxmanager', [])

@rxmanager.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
   when('/users', {
      templateUrl: '../templates/users/index.html',
      controller: 'UserIndexCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])