@rxmanager = angular.module('rxmanager', [])

@rxmanager.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    }) 
])