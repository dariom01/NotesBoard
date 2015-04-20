angular.module('app')
  .factory('SectionService', [
    'Restangular', 'Section',
    (Restangular, Section)->

      model = 'sections'
      Restangular.setBaseUrl("/api")

      Restangular.extendModel(model, (obj)->
        angular.extend(obj, Section)
      )

      list: (board_id)     -> Restangular.one('boards',board_id).getList(model)
  ])