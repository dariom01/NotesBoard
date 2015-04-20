angular.module('app').controller("NavBarCtrl", [
  '$scope', 'BoardService','$modal',
  ($scope, BoardService,$modal)->

    BoardService.list().then((boards) ->
      $scope.navBoards = boards
      console.dir boards
    )

    $scope.newBoard = () ->
      modalInstance = $modal.open({
        templateUrl: 'board/new.html',
        controller: 'BoardCreateModalCtrl',
        size: 'md',
        resolve:{
          board: ->
            new Object()
          boards: -> 
            $scope.navBoards
        }
      })

      modalInstance.result.then( ->
        console.log 'edit closed'
      )
])