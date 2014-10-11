@rxmanager.controller 'UserShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./users/#{$routeParams.id}.json").success((data) ->
    $scope.user = data
  )
  $scope.viewPrescription = (script_id) ->
  	$location.url "/users/#{id}/#{script_id}"
]