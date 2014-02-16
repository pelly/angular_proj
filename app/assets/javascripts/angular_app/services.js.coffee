window.applicationServices = angular.module('applicationServices', ['ngResource']);

window.applicationServices.factory 'Todo', ['$resource', ($resource) ->
  $resource('todos/:todoId', {}, {
      query: {
        method:'GET',
        params: {
          todoId:''
        }, isArray:true
      }
    }
  )
]
