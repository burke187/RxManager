@rxmanager.controller 'UserShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./users/#{$routeParams.id}.json").success((data) ->
    $scope.user = data
  )
]