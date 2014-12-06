@app.controller "ColorFieldController", [
  "$scope"
  ($scope) ->

    $scope.selectedColor = $("#selected_color_id").val() || $(".icon-colors span").first().data("icon-color-id")

    $scope.updateSelected = (id) ->
      $scope.selectedColor = id
]
