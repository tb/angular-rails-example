#= require templates/books/row

app = angular.module 'bookRow', ['templates']

app.directive 'bookRow', ->
  restrict: 'A'
  scope:
    book: '=bookRow' # Tempalte: book-row="book"
    removeBook: '&'  # Tempalte: remove-book="removeBook(book)"
  templateUrl: 'books/row.html'
