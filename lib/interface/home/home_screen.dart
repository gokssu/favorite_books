import 'package:easy_localization/easy_localization.dart';
import 'package:favorite_books/interface/widgets/app_bar.dart';
import 'package:favorite_books/interface/widgets/base_page.dart';
import 'package:favorite_books/interface/widgets/book_card_widget.dart';
import 'package:favorite_books/interface/widgets/button.dart';
import 'package:favorite_books/repositories/books/provider.dart';
import 'package:favorite_books/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  final searchController = useTextEditingController();
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void search() async {
      if (searchController.text.length > 500) {
        searchController.text = "";
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('home.search_error'.tr()),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
      FocusScope.of(context).unfocus();
      await ref.read(booksNotifierProvider.notifier).getList(searchController.text);
    }

    return BasePage(
      resizeToAvoidBottomInset: true,
      appBar: AppBarNav(
        title: 'app.name'.tr(),
        fav: true,
        back: false,
      ),
      padding: const EdgeInsets.all(10),
      childBody: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onSubmitted: (val) {
                    search();
                  },
                  controller: searchController,
                  onChanged: (val) async {
                    if (val.isEmpty) {
                      await ref.read(booksNotifierProvider.notifier).getList(val);
                    }
                  },
                  cursorColor: Theme.of(context).colorScheme.primary,
                  decoration: InputDecoration(
                      fillColor: Theme.of(context).colorScheme.background,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onPrimary, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIconColor: Theme.of(context).colorScheme.onPrimary,
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(10),
                        width: 20,
                        child: const Icon(Icons.search),
                      )),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Button(
                  width: 80,
                  text: 'home.search'.tr(),
                  onPressed: () async {
                    search();
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ref.watch(booksNotifierProvider).when(
                loaded: (list) {
                  return list.isNotEmpty
                      ? ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final item = list[index].volumeInfo;
                            return BookCard(
                              title: item.title,
                              authors: item.authors,
                              publishedDate: item.publishedDate,
                              pageCount: item.pageCount,
                              imageLinks: item.imageLinks != null ? item.imageLinks!.thumbnail : '',
                              subtitle: item.subtitle,
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
                }))
      ]),
    );
  }
}
