@app.controller "CommentFormController", [
  "$scope"
  ($scope) ->

    # Property: Is the form visible?
    $scope.form_visible = false

    # Function: show the form
    $scope.show_form = ->
      $scope.form_visible = true

    # Function: hide the form
    $scope.hide_form = ->
      $scope.form_visible = false
]
