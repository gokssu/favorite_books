import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:favorite_books/repositories/favorites/models/favorite_book_model.dart';
import 'package:favorite_books/repositories/favorites/provider.dart';
import 'package:favorite_books/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookCard extends ConsumerWidget {
  final String? title;
  final List<String>? authors;
  final String? publishedDate;
  final int? pageCount;
  final String? imageLinks;
  final String? subtitle;
  final String? publisher;
  final String id;
  const BookCard({
    super.key,
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.pageCount,
    required this.id,
    required this.imageLinks,
    required this.publisher,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fav = ref.watch(isFavProvider(id));
    return fav.when(
        data: (data) {
          return GestureDetector(
            onDoubleTap: () async {
              if (!data) {
                await ref.read(favoritesNotifierProvider.notifier).addFav(FavoriteBook(
                      id: id,
                      title: title,
                      subtitles: subtitle,
                      authors: authors,
                      imageLinks: imageLinks,
                      publisher: publisher,
                      publishedDate: publishedDate,
                      pageCount: pageCount,
                    ));
                ref.watch(isFavProvider(id));
              }
            },
            onLongPress: () async {
              if (data) {
                await ref.read(favoritesNotifierProvider.notifier).removeFav(id);
                ref.watch(isFavProvider(id));
              }
            },
            onTap: () async {
              //detail
            },
            child: Container(
              height: 150,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: data ? Theme.of(context).colorScheme.surfaceTint : Theme.of(context).colorScheme.primary,
                  width: data ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).colorScheme.background,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: imageLinks != null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: CachedNetworkImage(
                              imageUrl: imageLinks ?? "",
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          )
                        : const Image(image: AppImages.book, fit: BoxFit.fitWidth),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            title ?? 'book_card.unknown'.tr(),
                            style: Theme.of(context).textTheme.titleMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        Visibility(
                          visible: subtitle != null,
                          child: detailText('${'book_card.subtitle'.tr()} : $subtitle', context),
                        ),
                        Visibility(
                          visible: authors != null,
                          child: detailText('${'book_card.authors'.tr()} : ${authors.toString().replaceAll(']', '').replaceAll('[', '')}', context),
                        ),
                        Visibility(
                          visible: publisher != null,
                          child: detailText('${'book_card.publisher'.tr()} : $publisher', context),
                        ),
                        Visibility(
                          visible: publishedDate != null,
                          child: detailText('${'book_card.published_time'.tr()} : $publishedDate', context),
                        ),
                        Visibility(
                          visible: pageCount != null,
                          child: detailText('${'book_card.pages'.tr()} : $pageCount', context),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        error: (e, s) {
          return Text(e.toString());
        });
  }

  Widget detailText(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
      overflow: TextOverflow.ellipsis,
    );
  }
}
