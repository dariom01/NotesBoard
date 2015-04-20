angular.module('app').controller('BoardListCtrl', ['$scope', 'BoardService','$routeParams','SectionService','NoteService','$modal',
($scope, BoardService,$routeParams,SectionService,NoteService,$modal) -> 
  BoardService.list().then((boards) ->
  	$scope.boards = boards
  	console.dir boards
  )
  BoardService.getOne($routeParams.id).then((promise) ->
   $scope.board = promise.board
   SectionService.list($scope.board.id).then((sections) ->
    $scope.board.sections = sections    
    console.dir $scope.board.sections 
    return
   )
   console.dir promise.board
  )

  $scope.newNote = (section_id) ->
   modalInstance = $modal.open({
        templateUrl: 'note/new.html',
        controller: 'NoteCreateModalCtrl',
        size: 'md',
        resolve:{
          note: ->
            new Object()
          notes: -> 
            NoteService.list(section_id).then((notes)->notes)
        }
      })
   modalInstance.result.then( ->
   	console.log 'edit closed'
   )
   return
  return
])