@app.controller "IconFormController", [
  "$scope"
  ($scope) ->

    $scope.selectedIcon = $("#selected_icon_id").val()

    $scope.updateSelected = (id) ->
      $scope.selectedIcon = id
]
