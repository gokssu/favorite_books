// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteBookAdapter extends TypeAdapter<FavoriteBook> {
  @override
  final int typeId = 1;

  @override
  FavoriteBook read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteBook(
      id: fields[0] as String,
      title: fields[1] as String?,
      subtitles: fields[4] as String?,
      authors: (fields[2] as List?)?.cast<String>(),
      imageLinks: fields[3] as String?,
      publisher: fields[5] as String?,
      publishedDate: fields[6] as String?,
      pageCount: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteBook obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.authors)
      ..writeByte(3)
      ..write(obj.imageLinks)
      ..writeByte(4)
      ..write(obj.subtitles)
      ..writeByte(5)
      ..write(obj.publisher)
      ..writeByte(6)
      ..write(obj.publishedDate)
      ..writeByte(7)
      ..write(obj.pageCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteBookAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
