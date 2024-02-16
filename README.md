# animated_button

A Flutter package that provides a simple and customizable animated button widget.

## Getting Started

To use this package, add `animated_button` as a dependency in your pubspec.yaml file.

## Usage

Import the package in your Dart code:

```dart

import 'package:animated_button/animated_button.dart';

AnimatedButton(
  height: 50.0,
  width: 150.0,
  child: Text('Tap Me'),
  color: Colors.blue,
  radius: BorderRadius.circular(10.0),
  onTap: () {
    // Do something
  },
)

The AnimatedButton widget has the following parameters:

height: The height of the button.
width: The width of the button.
child: The widget to display inside the button.
color: The color of the button.
radius: The border radius of the button.
onTap: The callback function to execute when the button is tapped.
The button will animate its size, color, and opacity when tapped.

Features
Simple and easy to use
Customizable and flexible
Smooth and responsive animation
Dependencies
This package depends on the following Flutter packages:

flutter
path_provider
License
This package is licensed under the MIT license.