import 'package:dio/dio.dart';
import 'package:favorite_books/repositories/books/models/book_model.dart';
import 'package:retrofit/http.dart';

part 'book_service.g.dart';

@RestApi()
abstract class BookService {
  factory BookService(Dio dio, {String baseUrl}) = _BookService;

  @GET('volumes?q={search}&key={apiKey}')
  Future<Books> getList(
    @Path() String search,
    @Path() String apiKey,
  );
}
