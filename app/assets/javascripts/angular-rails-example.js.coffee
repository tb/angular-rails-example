#= require templates/books/index
#= require templates/books/form
#= require templates/favorites/index
#= require controllers/books-controller
#= require controllers/favorites-controller

app = angular.module 'angular-rails-example', ['ngRoute', 'booksController', 'favoritesController', 'templates']

app.config ['$routeProvider', '$locationProvider', '$httpProvider',
  ($routeProvider, $locationProvider, $httpProvider) ->
    $locationProvider.html5Mode true
    $routeProvider
      .when '/books',
        templateUrl: 'books/index.html'
        controller : 'BooksController'
      .when '/favorites',
        templateUrl: 'favorites/index.html'
        controller : 'FavoritesController'
      .when '/books/:id',
        templateUrl: 'books/form.html'
        controller : 'BookController'
      .otherwise
        redirectTo: '/books'
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
