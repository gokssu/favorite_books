import 'package:favorite_books/providers/dio_provider.dart';
import 'package:favorite_books/repositories/books/book_repository.dart';
import 'package:favorite_books/repositories/books/controllers/books_notifier.dart';
import 'package:favorite_books/repositories/books/controllers/books_state.dart';
import 'package:favorite_books/repositories/books/services/book_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bookServiceProvider = Provider<BookService>((ref) => BookService(
      ref.watch(dioProvider),
    ));

final booksRepositoryProvider = Provider<BookRepository>(
  (ref) => BookRepository(bookService: ref.watch(bookServiceProvider)),
);

final booksNotifierProvider = StateNotifierProvider<BooksNotifier, BooksState>((ref) => BooksNotifier(
      repository: ref.watch(booksRepositoryProvider),
    ));
