import 'package:favorite_books/repositories/favorites/controllers/favorite_state.dart';
import 'package:favorite_books/repositories/favorites/favorite_repository.dart';
import 'package:favorite_books/repositories/favorites/models/favorite_book_model.dart';
import 'package:favorite_books/utils/network_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritesNotifier extends StateNotifier<FavoriteState> {
  FavoriteRepository repository;

  FavoritesNotifier({required this.repository}) : super(const FavoriteState.loading()) {
    getList();
  }

  Future<void> getList() async {
    state = const FavoriteState.loading();
    try {
      await repository.getFavorites().then(
        (value) {
          state = FavoriteState.loaded(data: value);
        },
      );
    } catch (e) {
      final error = NetworkFailure.process(e);
      state = FavoriteState.error(error.message);
    }
  }

  Future<void> addFav(FavoriteBook favoriteBook) async {
    state = const FavoriteState.loading();
    try {
      await repository.addFavorite(favoriteBook).then(
        (value) {
          state = FavoriteState.loaded(data: value);
        },
      );
    } catch (e) {
      final error = NetworkFailure.process(e);
      state = FavoriteState.error(error.message);
    }
  }

  Future<void> removeFav(String id) async {
    state = const FavoriteState.loading();
    try {
      await repository.removeFavorite(id).then(
        (value) {
          state = FavoriteState.loaded(data: value);
        },
      );
    } catch (e) {
      final error = NetworkFailure.process(e);
      state = FavoriteState.error(error.message);
    }
  }
}
