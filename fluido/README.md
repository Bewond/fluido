# Fluido
A simple and lightweight package to efficiently create reactive and responsive user interfaces in [Flutter](https://flutter.dev/).

- [Introduction](#introduction)
  * [Breakpoints and orientation](#breakpoints-and-orientation)
  * [Screen or Layout](#screen-or-layout)
- [Documentation](#documentation)
  * [ScreenSwitchValue](#screenswitchvalue)
  * [ScreenWidth and LayoutWidth](#screenwidth-and-layoutwidth)
  * [ScreenOrientation and ScreenOrientation](#screenorientation-and-screenorientation)
  * [FluidoSettings](#fluidosettings)
- [Maintainers](#maintainers)

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

Use the `other` parameter to specify a value in case there is no **lower non-null value** for a breakpoint.

This can be very useful when used with Flutter's [Flex](https://api.flutter.dev/flutter/widgets/Flex-class.html) widget to display items in row or column depending on size:

```dart
Flex(
  direction: ScreenSwitchValue(
    context,
    sm: Axis.vertical,
    lg: Axis.horizontal,
  ).value,
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

### ScreenOrientation and ScreenOrientation
`ScreenOrientation` select the specified widget according to the screen orientation.
`ScreenOrientation` is the same but based on the orientation of the parent widget.

```dart
ScreenOrientation(
  portrait: Container(child: Text('portrait')),
  landscape: Container(child: Text('landscape')),
);
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
