import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.g.dart';

@JsonSerializable()
class Books {
  final int totalItems;
  final List<Book>? items;

  Books({
    required this.items,
    required this.totalItems,
  });

  factory Books.fromJson(Map<String, dynamic> data) => _$BooksFromJson(data);

  Map<String, dynamic> toJson() => _$BooksToJson(this);
}

@JsonSerializable()
class Book {
  final String id;
  final BookDetail volumeInfo;

  Book({
    required this.id,
    required this.volumeInfo,
  });

  factory Book.fromJson(Map<String, dynamic> data) => _$BookFromJson(data);

  Map<String, dynamic> toJson() => _$BookToJson(this);
}

@JsonSerializable()
class BookDetail {
  final String? title;
  final List<String>? authors;
  final String? publishedDate;
  final int? pageCount;
  final ImageLinks? imageLinks;
  final String? subtitle;
  final String? publisher;

  BookDetail({
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.pageCount,
    required this.imageLinks,
    required this.subtitle,
    required this.publisher,
  });

  factory BookDetail.fromJson(Map<String, dynamic> data) => _$BookDetailFromJson(data);

  Map<String, dynamic> toJson() => _$BookDetailToJson(this);
}

@JsonSerializable()
class ImageLinks {
  final String? thumbnail;

  ImageLinks({
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> data) => _$ImageLinksFromJson(data);

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);
}
