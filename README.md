# Internet Detector

[![pub package](https://img.shields.io/pub/v/internet_detector.svg)](https://pub.dev/packages/internet_detector)

## Description

**Internet Detector** is a Flutter package that allows you to easily detect internet connectivity in your app.

## Features

- Choose between **GetX** and **Provider** for state management.
- Detect internet connectivity using the [connectivity_plus](https://pub.dev/packages/connectivity_plus) package.
- Two main widgets for different implementations:
    - `InternetDetectorAppProvider` (for Provider)
    - `InternetDetectorAppGetX` (for GetX)

## Getting Started

To use this package, add the following dependencies to your `pubspec.yaml` file:

### Using GetX

```yaml
dependencies:
  connectivity_plus: ^X.X.X
  get: ^X.X.X
  internet_detector: ^X.X.X

InternetDetectorAppGetX({super.key, this.title, this.routes, this.home, this.initialRoute, this.debugShowCheckedModeBanner});
user this widget using getX in main.dart runApp method

use obx widget like this using this isInternet variable
Obx(() {
  return Text(InternetDetector.internetController.isInternet.value
      ? 'Connected'
      : 'Disconnected');
});


Using Provider
dependencies:
  connectivity_plus: ^X.X.X
  provider: ^X.X.X
  internet_detector: ^X.X.X

InternetDetectorAppProvider({super.key, required this.otherProviders, this.routes, this.home, this.initialRoute, this.title, this.debugShowCheckedModeBanner});
use this widget using provider in main.dart runApp method


use consumer widget like this using this isInternet variable
Consumer<InternetCheckerProvider>(
  builder: (context, provider, child) {
    return Text(provider.isInternet ? 'Connected' : 'Disconnected');
  },
);

 Inspired by the [theme_change](https://pub.dev/packages/theme_change) package, this package offers two implementations using different state management solutions: **GetX** and **Provider**.