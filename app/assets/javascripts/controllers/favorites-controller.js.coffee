app = angular.module 'favoritesController', []

app.controller 'FavoritesController', ['$scope',
  ($scope) ->
    $scope.favoritesMessage = 'Message from controller'
]
