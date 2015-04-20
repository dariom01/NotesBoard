@exampleApp = angular
  .module('app.homeApp', [
    # additional dependencies here
  ])
  .run(->
    console.log 'homeApp running'
  )