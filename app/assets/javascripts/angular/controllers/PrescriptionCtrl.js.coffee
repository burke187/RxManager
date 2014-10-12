@rxmanager.controller 'PerscriptionShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./users/#{user_id}/#{routeParams.id}.json").success((data) ->
    $scope.prescription = data
  )
  $scope.viewPrescription = (script_id) ->
  	$location.url "/users/#{id}/#{script_id}"
]