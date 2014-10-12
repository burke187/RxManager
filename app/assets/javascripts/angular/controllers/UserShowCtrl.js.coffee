@rxmanager.controller 'UserShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./users/#{$routeParams.userId}.json").success((data) ->
    $scope.user = data
  )

]