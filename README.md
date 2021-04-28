<p align="center">
<img src="/docs/assets/fluido.png" width="100%" alt="Fluido" />
</p>

## Overview
A simple and lightweight package to efficiently create reactive and responsive user interfaces in [Flutter](https://flutter.dev/).

- [Installing](#installing)
- [Introduction](#introduction)
  * [Breakpoints and orientation](#breakpoints-and-orientation)
  * [Screen or Layout](#screen-or-layout)
- [Documentation](#documentation)
  * [ScreenSwitchValue](#screenswitchvalue)
  * [ScreenWidth and LayoutWidth](#screenwidth-and-layoutwidth)
  * [ScreenOrientation and LayoutOrientation](#screenorientation-and-layoutorientation)
  * [ScreenWidthWrap](#screenwidthwrap)
  * [FluidoSettings](#fluidosettings)
- [Maintainers](#maintainers)

## Installing
#### Depend
Add this to your package's pubspec.yaml file:
```yaml
dependencies:
  fluido: ^0.2.2
```
#### Install
You can install packages from the command line:
```shell
flutter pub get
```

## Introduction

Fluido widgets are based on the use of breakpoints (`sm`, `md`, `lg`, `xl`, `xl2`).
A value is specified, for example a widget, to be returned for each breakpoints depending on the dimensions.

If no value is specified for a given breakpoints, the **lower closest non-null value** is used.

For example if you specify only `sm` and `lg` for the dimensions small and medium the specified `sm` value is selected
while for the dimensions from large upwards the specified `lg` value is selected.

This allows you to **incrementally specify** which value you want to get.

### Breakpoints and orientation
Breakpoints are used to select a value depending on the width of the screen or window, for example with the `ScreenWidth` and `LayoutWidth` widgets.

To select a value based on orientation, landscape or portrait, use the `ScreenOrientation` and `LayoutOrientation` widgets.

### Screen or Layout
There are two versions of the main widgets and classes:

Objects named with `Screen*` refer to the size of the screen or window while those with `Layout*` refer to the size of the parent widget and can therefore only be used as a widget.

## Documentation

### ScreenSwitchValue
`ScreenSwitchValue` selects the specified value according to the screen or window size,
it updates automatically as dimensions change and can be used for values of any type.

```dart
Container(
  color: ScreenSwitchValue(
    context,
    sm: Colors.red,
    lg: Colors.blue,
  ).value,
);
```

It can also be accessed directly from the BuildContext using `context.screenSwitchValue()` method.

This can be very useful when used with Flutter's [Flex](https://api.flutter.dev/flutter/widgets/Flex-class.html) widget to display items in row or column depending on size:

```dart
Flex(
  direction: context.screenSwitchValue(
    sm: Axis.vertical,
    lg: Axis.horizontal,
  ),
  children: [
    ...
  ],
);
```

### ScreenWidth and LayoutWidth
`ScreenWidth` select the specified widget according to the screen or window size (like `ScreenSwitchValue` of type widget).
`LayoutWidth` is the same but based on the size of the parent widget.

```dart
ScreenWidth(
  sm: Container(
    child: Text('sm'),
  ),
  md: Container(
    child: Text('md'),
  ),
  lg: Container(
    child: Text('lg'),
  ),
  xl: Container(
    child: Text('xl'),
  ),
  xl2: Container(
    child: Text('xl2'),
  ),
);
```

Thanks to the incremental system of breakpoints `ScreenWidth` can also be used to show a widget only for certain dimensions:

```dart
ScreenWidth(xl: Spacer())
```

In this example the Spacer widget will only be displayed for sizes extra large and up.

### ScreenOrientation and LayoutOrientation
`ScreenOrientation` select the specified widget according to the screen orientation.
`LayoutOrientation` is the same but based on the orientation of the parent widget.

```dart
ScreenOrientation(
  portrait: Container(child: Text('portrait')),
  landscape: Container(child: Text('landscape')),
);
```

### ScreenWidthWrap
`ScreenWidthWrap` select the widget obtained as a result of the specified function according to the screen or window size.
Functions take as input the `content` widget passed as a parameter.

This can be useful to wrap a widget with another only for certain dimensions.
In the following example, only if the `Flex` widget children are arranged horizontally is it necessary to have a `Flexible` widget as a parent.

```dart
Flex(
  direction: context.screenSwitchValue(
    sm: Axis.vertical,
    lg: Axis.horizontal,
  ),
  children: [
    ScreenWidthWrap(
      lg: (content) => Flexible(child: content),
      content: ...,
    ),
  ],
),
```

### FluidoSettings
The following breakpoints are currently available:
- sm = 640
- md = 768
- lg = 1024
- xl = 1280
- xl2 = 1536

To globally change the value of the breakpoints, use the `FluidoSettings` object:

```dart
void main() {
  FluidoSettings.breakpoints = FluidoBreakpoints(
    sm: 768,
    md: 1024,
    lg: 1280,
    xl: 1536,
  );

  runApp(MyApp());
}
```

To specify different breakpoint values for a specific widget use the optional `breakpoints` parameter:
```dart
ScreenWidth(
  breakpoints: FluidoBreakpoints(
    sm: 768,
    md: 1024,
    lg: 1280,
  ),
  sm: ...
  md: ...
);
```

## Maintainers
- [Riccardo Brero](https://github.com/Riki1312)
