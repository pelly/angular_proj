window.application = angular.module("application", ["ngResource", "ngRoute", 'applicationServices'])

window.application.controller("TodosCtl", ["$scope", "Todo", ($scope, Todo) ->
  $scope.todos = Todo.query()
  $scope.createTodo = () ->
    todo = new Todo({summary:@summary,status:'not started'})
    todo.$save((data) ->
      $scope.todos.push(data)
    )

  $scope.statuses = ['not started','started','finished']
])

window.application.config(["$routeProvider", ($router) ->
  $router.when("/todos", {
    templateUrl: "angular_templates/todos.html"
    controller: "TodosCtl"
  }).otherwise({redirectTo: "/todos"})
])
