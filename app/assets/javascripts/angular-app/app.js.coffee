@app = angular.module('app', [
  # additional dependencies here, such as restangular
  'restangular',
  'ui.bootstrap',
  'templates','ngRoute'
])

# for compatibility with Rails CSRF protection

@app.config([
  '$httpProvider', ($httpProvider)->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])

@app.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/boards/:id', { templateUrl: 'board/show.html', controller: 'BoardListCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])


@app.run(->
  console.log 'angular app running'
)