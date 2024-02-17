import 'package:favorite_books/repositories/books/models/book_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_state.freezed.dart';

@freezed
abstract class BooksState with _$BooksState {
  const factory BooksState.loading() = _BooksStateLoading;
  const factory BooksState.loaded({required List<Book> data}) = _BooksStateLoaded;
  const factory BooksState.error(String error) = _BooksStateStateError;
}
