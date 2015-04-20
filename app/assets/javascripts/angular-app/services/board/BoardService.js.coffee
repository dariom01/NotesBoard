angular.module('app')
  .factory('BoardService', [
    'Restangular', 'Board',
    (Restangular, Board)->

      model = 'boards'
      Restangular.setBaseUrl("/api")

      Restangular.extendModel(model, (obj)->
        angular.extend(obj, Board)
      )

      list: ()     -> Restangular.all(model).getList()
      
      getOne: (board_id)     -> Restangular.one(model,board_id).get()
      
  ])