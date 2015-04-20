angular.module('app').controller('BoardCreateModalCtrl', [
  '$scope', '$modalInstance','FormatService','SectionService', 'board','boards', ($scope, $modalInstance,FormatService, SectionService,board,boards)->
   	$scope.modal = this
    $scope.board = board

   	FormatService.list().then((formats) ->
      $scope.formats   = formats
      $scope.board.format = formats[0]
      return
    )

    $scope.submitBoard = (board) ->
      boards.post(board).then((promise) ->
        SectionService.list(promise.board.id).then((sections) ->
          angular.forEach board.format.titles, (section) ->
            sections.post({name: section.text})
            return
          $modalInstance.close('saved')
          return
        )
        return
      )
      return

    $scope.cancel = ->
      $modalInstance.dismiss('cancel')
    return  
])