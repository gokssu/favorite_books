import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.onPressed,
    super.key,
    this.color,
    this.disabledColor,
    this.style,
    this.height,
    this.width,
  });
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? disabledColor;
  final TextStyle? style;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width ?? 100,
        height: height ?? 50,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            foregroundColor: color ?? Theme.of(context).colorScheme.primary,
            backgroundColor: color ?? Theme.of(context).colorScheme.primary,
            side: BorderSide(color: disabledColor ?? Theme.of(context).colorScheme.onSurfaceVariant),
          ),
          child: Text(
            text,
            style: style ?? Theme.of(context).textTheme.labelLarge,
          ),
        ),
      );
}
