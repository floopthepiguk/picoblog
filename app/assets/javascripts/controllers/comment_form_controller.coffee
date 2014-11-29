@app.controller "CommentFormController", [
  "$scope"
  ($scope) ->

    $scope.comment = { icon_id: 1, color: "#FF0000" }

    $scope.form_visible = false

    $scope.show_form = ->
      $scope.form_visible = true

    $scope.hide_form = ->
      $scope.form_visible = false
]
