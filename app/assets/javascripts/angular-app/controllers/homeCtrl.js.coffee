angular.module('app.homeApp').controller("HomeCtrl", [
  '$scope',
  ($scope)->
    console.log 'HomeCtrl running'

    $scope.exampleValue = "Hello angular and rails"

])