import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? activeColor;
  final Color? checkColor;
  final Color? cupertinoActiveColor;

  const PlatformCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.checkColor,
    this.cupertinoActiveColor,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoCheckbox(
        value: value,
        onChanged: onChanged,
        activeColor: cupertinoActiveColor ?? CupertinoColors.activeGreen,
      );
    } else {
      return Checkbox(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        checkColor: checkColor,
      );
    }
  }
}
