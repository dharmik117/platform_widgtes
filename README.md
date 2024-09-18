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



## Features

1. Install the package: Add the following line to your pubspec.yaml file:
dependencies:  platform_widgets: ^0.1.2 (replace with the latest version)

2. Import the package: In your Dart code, import the necessary widget:
import 'package:platform_widgets/platform_widgets.dart';

PlatformListTile: A customizable list tile that automatically renders as a ListTile on Android and a CupertinoListTile on iOS.
PlatformSlider: A slider widget that intelligently switches between Slider and CupertinoSlider based on the platform.

## Getting started

Package that can use platform specific widgets.

## Usage

TODO: 
View `/example` folder.

```
PlatformButton(onPressed: (){}, child: Text('Hello')),

PlatformCheckbox(value: true, onChanged: (val){}),

PlatformSwitch(value: true, onChanged: (val){})
```

## Additional information


Contributing: We welcome your contributions! Feel free to submit bug reports, feature requests, or pull requests to improve this package.
Issues: Please report any issues you encounter using the GitHub issue tracker: https://github.com/dharmik117/platform_widgtes.
License: This package is released under the MIT License (see LICENSE file for details).
Example:

A more elaborate example showcasing both widgets can be found in the /example directory of this package.
