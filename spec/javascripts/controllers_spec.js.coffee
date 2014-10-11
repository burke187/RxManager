describe "rxmanager controllers", ->
  beforeEach module("rxmanager")

  describe "UserIndexCtrl", ->
    it "should set users to an empty array", inject(($controller) ->
      scope = {}
      ctrl = $controller("UserIndexCtrl",
        $scope: scope
      )
      expect(scope.users.length).toBe 0
    )