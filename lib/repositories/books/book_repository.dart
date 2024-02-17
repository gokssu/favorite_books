import 'package:favorite_books/config/config.dart';
import 'package:favorite_books/repositories/books/models/book_model.dart';
import 'package:favorite_books/repositories/books/services/book_service.dart';

class BookRepository {
  final BookService bookService;
  BookRepository({required this.bookService});

  Future<List<Book>> getList(String searchText) async {
    if (searchText.isEmpty) {
      return [];
    }
    final books = await bookService.getList(searchText, Config.apiKey);
    return books.items ?? [];
  }
}
