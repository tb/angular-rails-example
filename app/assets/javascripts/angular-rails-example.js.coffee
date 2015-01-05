#= require templates/books/index
#= require templates/books/form
#= require controllers/books-controller

app = angular.module 'angular-rails-example', ['ngRoute', 'booksController', 'templates']

app.config ['$routeProvider', '$locationProvider', '$httpProvider',
  ($routeProvider, $locationProvider, $httpProvider) ->
    $locationProvider.html5Mode true
    $routeProvider
      .when '/books',
        templateUrl: 'books/index.html'
        controller : 'BooksController'
      .when '/books/:id',
        templateUrl: 'books/form.html'
        controller : 'BookController'
      .otherwise
        redirectTo: '/books'
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]
