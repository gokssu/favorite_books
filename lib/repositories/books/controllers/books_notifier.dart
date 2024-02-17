import 'package:favorite_books/repositories/books/book_repository.dart';
import 'package:favorite_books/repositories/books/controllers/books_state.dart';
import 'package:favorite_books/utils/network_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksNotifier extends StateNotifier<BooksState> {
  BookRepository repository;

  BooksNotifier({required this.repository}) : super(const BooksState.loading()) {
    getList("");
  }

  Future<void> getList(String search) async {
    state = const BooksState.loading();
    try {
      await repository.getList(search).then(
        (value) {
          state = BooksState.loaded(data: value);
        },
      );
    } catch (e) {
      final error = NetworkFailure.process(e);
      state = BooksState.error(error.message);
    }
  }
}
