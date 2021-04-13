import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Collection of methods to use [LayoutSwitchWidget] and [ScreenSwitchValue]
/// more immediately by accessing them directly from the [BuildContext].
extension FluidoContext on BuildContext {
  /// Selects the specified [Widget] based on the size of the parent widget.
  /// It updates automatically as dimensions change.
  ///
  /// Same as using [LayoutSwitchWidget] directly.
  Widget layoutSwitchWidget({
    FluidoBreakpoints? breakpoints,
    required Widget sm,
    Widget? md,
    Widget? lg,
    Widget? xl,
    Widget? xl2,
  }) {
    return LayoutSwitchWidget(
      this,
      breakpoints: breakpoints,
      sm: sm,
      md: md,
      lg: lg,
      xl: xl,
      xl2: xl2,
    ).widget;
  }

  /// Selects the specified value according to the screen or window size.
  /// It updates automatically as dimensions change and can be used for values of any type.
  ///
  /// Same as using [ScreenSwitchValue] directly.
  Type screenSwitchValue<Type>({
    FluidoBreakpoints? breakpoints,
    required Type sm,
    Type? md,
    Type? lg,
    Type? xl,
    Type? xl2,
  }) {
    return ScreenSwitchValue<Type>(
      this,
      breakpoints: breakpoints,
      sm: sm,
      md: md,
      lg: lg,
      xl: xl,
      xl2: xl2,
    ).value;
  }
}
