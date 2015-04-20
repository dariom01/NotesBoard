angular.module('app').controller('NoteCreateModalCtrl', [
  '$scope', '$modalInstance','NoteService', 'note','notes', ($scope, $modalInstance,NoteService,note,notes)->
    $scope.modal = this
    $scope.note = note

    $scope.submitNote = (note) ->
      notes.post(note).then((promise) ->
       $modalInstance.close('saved')
       return
      )
      return
    $scope.cancel = ->
      $modalInstance.dismiss('cancel')
    return  
])