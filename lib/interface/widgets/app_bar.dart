import 'package:favorite_books/providers/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarNav extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? back;
  final bool? fav;
  final VoidCallback? onBackPressed;
  final Color? backgroundColor;

  const AppBarNav({
    super.key,
    required this.title,
    this.back,
    this.fav = true,
    this.onBackPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) => AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.background,
        elevation: 0.0,
        actions: fav == true
            ? [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    onPressed: () {
                      context.pushReplacement(Routes.favorites);
                    },
                  ),
                )
              ]
            : null,
        leading: true == back
            ? IconButton(
                icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onPrimary),
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                onPressed: () {
                  if (onBackPressed != null) {
                    onBackPressed!();
                  } else {
                    GoRouter.of(context).pop();
                  }
                },
              )
            : null,
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
