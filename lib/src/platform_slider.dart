import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PlatformSlider extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final ValueChanged<double> onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? thumbColor;
  final bool disabled;

  const PlatformSlider({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    this.divisions,
    required this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return CupertinoSlider(
        value: value,
        min: min,
        max: max,
        divisions: divisions,
        onChanged: disabled ? null : onChanged,
        activeColor: activeColor,
      );
    } else {
      return Slider(
        value: value,
        min: min,
        max: max,
        divisions: divisions,
        onChanged: disabled ? null : onChanged,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
        thumbColor: thumbColor,
      );
    }
  }
}