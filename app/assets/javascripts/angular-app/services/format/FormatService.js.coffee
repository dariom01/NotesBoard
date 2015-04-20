angular.module('app')
  .factory('FormatService', [
    'Restangular', 'Format',
    (Restangular, Format)->

      model = 'formats'
      Restangular.setBaseUrl("/api")

      Restangular.extendModel(model, (obj)->
        angular.extend(obj, Format)
      )

      list: ()     -> Restangular.all(model).getList()
  ])