@rxmanager.controller 'UserCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.users = []
  $http.get('./users.json').success((data) ->
    $scope.users = data
  )
  $scope.viewUser = (userId) ->
   $location.url('/user'+userId)
]