import 'package:favorite_books/repositories/favorites/controllers/favorite_notifier.dart';
import 'package:favorite_books/repositories/favorites/controllers/favorite_state.dart';
import 'package:favorite_books/repositories/favorites/favorite_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoritesRepositoryProvider = Provider<FavoriteRepository>((ref) => FavoriteRepository());

final favoritesNotifierProvider = StateNotifierProvider<FavoritesNotifier, FavoriteState>((ref) => FavoritesNotifier(
      repository: ref.watch(favoritesRepositoryProvider),
    ));

final isFavProvider = FutureProvider.autoDispose.family<bool, String>((ref, id) async {
  final favRepository = ref.watch(favoritesRepositoryProvider);
  return favRepository.isFav(id);
});
