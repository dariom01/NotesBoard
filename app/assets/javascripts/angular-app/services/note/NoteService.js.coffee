angular.module('app')
  .factory('NoteService', [
    'Restangular', 'Note',
    (Restangular, Note)->

      model = 'notes'
      Restangular.setBaseUrl("/api")

      Restangular.extendModel(model, (obj)->
        angular.extend(obj, Note)
      )

      list: (section_id)     -> Restangular.one('sections',section_id).getList(model)
  ])