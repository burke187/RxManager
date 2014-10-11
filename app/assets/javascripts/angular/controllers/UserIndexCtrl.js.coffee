@rxmanager.controller 'UserIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.users = []
  $http.get('./users.json').success((data) ->
    $scope.users = data
  )
  $scope.viewUser = (id) ->
   $location.url "/users/#{id}"
]