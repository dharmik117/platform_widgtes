import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final Color? activeColor;
  final Color? cupertinoActiveColor;

  const PlatformRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.activeColor,
    this.cupertinoActiveColor,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoRadio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: cupertinoActiveColor ?? CupertinoColors.activeBlue,
      );
    } else {
      return Radio<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: activeColor,
      );
    }
  }
}
