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
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeTrackColor,
    this.cupertinoActiveColor,
    this.cupertinoTrackColor,
    this.thumbColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Stack(
        alignment: Alignment.center,
        children: [
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: cupertinoActiveColor ?? CupertinoColors.activeGreen,
            trackColor: cupertinoTrackColor ?? CupertinoColors.systemGrey,
          ),
          Positioned(
            left: value ? 16 : 0, // Thumb position based on switch state
            child: Container(
              width: 28.0,
              height: 28.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: thumbColor ?? CupertinoColors.white,
              ),
            ),
          ),
        ],
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
