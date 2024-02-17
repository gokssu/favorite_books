import 'package:favorite_books/repositories/favorites/models/favorite_book_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState.loading() = _FavoriteStateLoading;
  const factory FavoriteState.loaded({required List<FavoriteBook> data}) = _FavoriteStateLoaded;
  const factory FavoriteState.error(String error) = _FavoriteStateStateError;
}
