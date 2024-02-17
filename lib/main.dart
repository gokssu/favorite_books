import 'dart:async';

import 'package:favorite_books/config/config.dart';
import 'package:favorite_books/providers/router_provider.dart';
import 'package:favorite_books/repositories/favorites/models/favorite_book_model.dart';
import 'package:favorite_books/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await Hive.initFlutter();

    Hive.registerAdapter(FavoriteBookAdapter());
    await Hive.openBox<FavoriteBook>(Config.favoritesBox);
    runApp(
      EasyLocalization(
        supportedLocales: Config.supportedLocales,
        path: 'assets/language',
        useOnlyLangCode: true,
        assetLoader: YamlAssetLoader(),
        child: const ProviderScope(
          child: MyApp(),
        ),
      ),
    );
  }, (error, stackTrace) {});
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: Config.applicationTitle,
      builder: (context, child) {
        return child ?? Container();
      },
      theme: lightAppTheme,
      darkTheme: darkAppTheme,
      routerConfig: router,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
    );
  }
}
