@app.controller "IconFieldController", [
  "$scope"
  ($scope) ->

    $scope.selectedIcon = $("#selected_icon_id").val() || $(".icons span").first().data("icon-id")

    $scope.updateSelected = (id) ->
      $scope.selectedIcon = id
]
