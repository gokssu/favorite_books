import 'package:easy_localization/easy_localization.dart';
import 'package:favorite_books/interface/widgets/app_bar.dart';
import 'package:favorite_books/interface/widgets/base_page.dart';
import 'package:favorite_books/interface/widgets/book_card_widget.dart';
import 'package:favorite_books/providers/router_provider.dart';
import 'package:favorite_books/repositories/favorites/provider.dart';
import 'package:favorite_books/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritesScreen extends HookConsumerWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
        resizeToAvoidBottomInset: true,
        appBar: AppBarNav(
          title: 'app.name'.tr(),
          fav: false,
          back: true,
          onBackPressed: () {
            context.push(Routes.main);
          },
        ),
        padding: const EdgeInsets.all(10),
        childBody: ref.watch(favoritesNotifierProvider).when(
            loaded: (list) {
              return list.isNotEmpty
                  ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        final item = list[index];
                        return BookCard(
                          title: item.title,
                          authors: item.authors,
                          publishedDate: item.publishedDate,
                          pageCount: item.pageCount,
                          imageLinks: item.imageLinks,
                          subtitle: item.subtitles,
                          publisher: item.publisher,
                          id: list[index].id,
                        );
                      })
                  : const Center(
                      child: Image(
                        image: AppImages.logo,
                        width: 100,
                        height: 150,
                      ),
                    );
            },
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            error: (e) {
              return Text(e.tr());
            }));
  }
}
