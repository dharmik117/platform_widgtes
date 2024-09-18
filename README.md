<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

TODO: Platform Widgets
A Flutter package for adaptive UI components.



## Intoduction

In the world of Flutter development, where cross-platform consistency is paramount,
platform_widgets emerges as a valuable tool. 
This package offers a collection of widgets that seamlessly adapt to the specific platform, ensuring a native-like experience on both iOS and Android devices.


## Key Features

PlatformListTile: A versatile list tile that automatically renders as either a ListTile on Android or a CupertinoListTile on iOS.

PlatformSlider: A slider widget that intelligently switches between Slider and CupertinoSlider based on the platform.

PlatformButton: Renders as a TextButton on Android and a CupertinoButton on iOS, ensuring a native-like appearance.

PlatformCheckbox: Renders as a Checkbox on Android and a CupertinoCheckbox on iOS, ensuring a native-like appearance.

PlatformRadio :  Renders as a Radio on Android and a CupertinoRadio on iOS,ensuring a native-like appearance.

PlatformSwitch:  Renders as a Switch on Android and a CupertinoSwitch on iOS, ensuring a native-like appearance.


## Getting started

Package that can use platform specific widgets.

1. Install the package: Add the following line to your pubspec.yaml file:
   dependencies:  platform_widgets

2. Import the package: In your Dart code, import the necessary widget:
   import 'package:platform_widgets/platform_widgets.dart';

## Usage

TODO: 
View `/example` folder.

## PlatformButton
```
PlatformButton(
  child: Text('Press me'),
  onPressed: () {
    // Handle button press
  },
  color: Colors.blue,
  textColor: Colors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
);

```


## PlatformCheckbox
```
PlatformCheckbox(
  value: _isChecked,
  onChanged: (value) {
    setState(() {
      _isChecked = value!;
    });
  },
  activeColor: Colors.blue,
  checkColor: Colors.white,
);

```


## PlatformListTile
```
PlatformListTile(
  leading: Icon(Icons.settings),
  title: Text('Settings'),
  subtitle: Text('Configure your preferences'),
  trailing: Icon(Icons.chevron_right),
  onTap: () {
    // Handle tile tap
  },
  tileColor: Colors.grey[200],
  textColor: Colors.black,
);

```

## PlatformRadio
```
PlatformRadio(
  value: _selectedValue,
  groupValue: _groupValue,
  onChanged: (value) {
    setState(() {
      _groupValue = value!;
    });
  },
  activeColor: Colors.blue,
  checkColor: Colors.white,
);

```

## PlatformSlider
```
PlatformSlider(
  value: 50.0,
  min: 0.0,
  max: 100.0,
  divisions: 10,
  onChanged: (value) {
    // Handle value changes
  },
  onChangedEnd: (value) {
    // Handle the end of dragging
  },
  activeColor: Colors.blue,
  inactiveColor: Colors.grey,
  thumbColor: Colors.white,
);
```

## PlatformSwitch
```
PlatformSwitch(
  value: _isSwitchOn,
  onChanged: (value) {
    setState(() {
      _isSwitchOn = value;
    });
  },
  activeColor: Colors.green,
  inactiveColor: Colors.grey,
);
```

## Benefits

Consistent User Experience: By automatically adapting to the platform's design guidelines, platform_widgets helps you deliver a more cohesive and familiar user experience across devices.
Simplified Development: No longer do you need to write separate code paths for iOS and Android. With platform_widgets, you can maintain a single codebase while ensuring platform-specific styling.
Enhanced Visual Appeal: The widgets in this package are meticulously designed to match the native look and feel of each platform, providing a polished and professional appearance.

## Additional information


Contributing: We welcome your contributions! Feel free to submit bug reports, feature requests, or pull requests to improve this package.
Issues: Please report any issues you encounter using the GitHub issue tracker: https://github.com/dharmik117/platform_widgtes.
License: This package is released under the MIT License (see LICENSE file for details).
Example:

A more elaborate example showcasing both widgets can be found in the /example directory of this package.
