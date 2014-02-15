window.application = angular.module("application", ["ngResource", "ngRoute"])

window.application.controller("TodosCtl", ["$scope", "$resource", ($scope, $resource) ->
  todoResource = $resource("http://localhost:3000/todos/:id", {id: "@id"})
  $scope.todos = todoResource.query()
])

window.application.config(["$routeProvider", ($router) ->
  $router.when("/todos", {
    templateUrl: "angular_templates/todos.html"
    controller: "TodosCtl"
  }).otherwise({redirectTo: "/todos"})
])