import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color? activeColor;
  final Color? inactiveThumbColor;
  final Color? inactiveTrackColor;
  final Color? activeTrackColor;
  final Color? cupertinoActiveColor;
  final Color? cupertinoTrackColor;
  final Color? thumbColor; // New thumb color property for both platforms

  const PlatformSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeTrackColor,
    this.cupertinoActiveColor,
    this.cupertinoTrackColor,
    this.thumbColor,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoSwitch(
        value: value,
        onChanged: onChanged,
        activeColor: cupertinoActiveColor ?? CupertinoColors.activeGreen,
        trackColor: cupertinoTrackColor ?? CupertinoColors.systemGrey,
      );
    } else {
      return Switch(
        value: value,
        onChanged: onChanged,
        activeColor: activeColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeTrackColor: activeTrackColor,
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return inactiveThumbColor;
          }
          return thumbColor; // Use custom thumb color if provided
        }),
      );
    }
  }
}
