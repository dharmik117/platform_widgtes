import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PlatformListTile extends StatelessWidget {
  final bool leading;
  final Widget? leadingIcon;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final bool dense;
  final bool isThreeLine;
  final GestureTapCallback? onTap;
  final Color? tileColor;
  final Color? textColor;
  final Color? iconColor;
  final bool enabled;

  const PlatformListTile({
    super.key,
    this.leading = false,
    this.leadingIcon,
    required this.title,
    this.subtitle,
    this.trailing,
    this.dense = false,
    this.isThreeLine = false,
    this.onTap,
    this.tileColor,
    this.textColor,
    this.iconColor,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return CupertinoListTile(
        leading: leadingIcon,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        onTap: enabled ? onTap : null,
      );
    } else {
      return ListTile(
        leading: leading ? leadingIcon : null,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        dense: dense,
        isThreeLine: isThreeLine,
        onTap: enabled ? onTap : null,
        tileColor: tileColor,
        textColor: textColor,
        iconColor: iconColor,
      );
    }
  }
}
