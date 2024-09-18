import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final Color? disabledColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;
  final double? minSize;
  final double? pressedOpacity;
  final MaterialTapTargetSize? materialTapTargetSize;
  final ButtonStyle? style;

  const PlatformButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.disabledColor,
    this.borderRadius,
    this.padding,
    this.textColor,
    this.minSize,
    this.pressedOpacity,
    this.materialTapTargetSize,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        padding: padding ?? const EdgeInsets.all(8.0),
        color: color ?? CupertinoColors.activeBlue,
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        onPressed: onPressed,
        disabledColor: disabledColor ?? CupertinoColors.systemGrey,
        minSize: minSize ?? 44.0,
        pressedOpacity: pressedOpacity ?? 0.4,
        child: DefaultTextStyle(
          style: TextStyle(color: textColor ?? CupertinoColors.white),
          child: child,
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
              foregroundColor:
                  textColor ?? Theme.of(context).colorScheme.onPrimary,
              backgroundColor: color ?? Theme.of(context).primaryColor,
              padding: padding,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
              ),
              tapTargetSize:
                  materialTapTargetSize ?? MaterialTapTargetSize.padded,
            ),
        child: child,
      );
    }
  }
}
