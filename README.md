<p align="center">
<img src="/docs/assets/fluido.png" width="100%" alt="Fluido" />
</p>

## Overview
A simple and lightweight package to efficiently create reactive and responsive user interfaces in [Flutter](https://flutter.dev/).

(Currently in beta)

## Installing
#### Depend
Add this to your package's pubspec.yaml file:
```yaml
dependencies:
  fluido:
    git:
      url: git://github.com/bewond/fluido.git
      path: fluido
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

For example if you specify only `sm` and `lg` for the dimensions sm and md the specified `sm` value is selected
while for the dimensions from `lg` upwards the specified `lg` value is selected.

This allows you to **incrementally specify** which value you want to get.

### Breakpoints and orientation
Breakpoints are used to select a value depending on the width of the screen or window, for example with the `ScreenWidth` and` LayoutWidth` widgets.

To select a value based on orientation, landscape or portrait, use the `ScreenOrientation` and` LayoutOrientation` widgets.

### Screen or Layout width
There are two versions of the main widgets and classes:

Objects named with `Screen *` refer to the size of the screen or window while those with `Layout *` refer to the size of the parent widget and can therefore only be used as a widget.

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

### Fluido settings
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
  lg: ...
);
```

## Maintainers
- [Riccardo Brero](https://github.com/Riki1312)
