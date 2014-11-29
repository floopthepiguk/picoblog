@app.controller "CommentFormController", [
  "$scope"
  ($scope) ->

    $scope.form_visible = false

    $scope.show_form = ->
      $scope.form_visible = true

    $scope.hide_form = ->
      $scope.form_visible = false
]
