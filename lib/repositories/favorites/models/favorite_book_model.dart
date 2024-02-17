import 'package:hive/hive.dart';

part 'favorite_book_model.g.dart';

@HiveType(typeId: 1)
class FavoriteBook extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final List<String>? authors;
  @HiveField(3)
  final String? imageLinks;
  @HiveField(4)
  final String? subtitles;
  @HiveField(5)
  final String? publisher;
  @HiveField(6)
  final String? publishedDate;
  @HiveField(7)
  final int? pageCount;
  FavoriteBook({
    required this.id,
    required this.title,
    required this.subtitles,
    required this.authors,
    required this.imageLinks,
    required this.publisher,
    required this.publishedDate,
    required this.pageCount,
  });

  FavoriteBook copyWith({
    String? id,
    String? title,
    String? subtitles,
    String? imageLinks,
    String? publisher,
    String? publishedDate,
    int? pageCount,
    List<String>? authors,
  }) {
    return FavoriteBook(
      title: title ?? this.title,
      id: id ?? this.id,
      subtitles: subtitles ?? this.subtitles,
      authors: authors ?? this.authors,
      imageLinks: imageLinks ?? this.imageLinks,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      pageCount: pageCount ?? this.pageCount,
    );
  }
}
