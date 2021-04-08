import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

extension FluidoContext on BuildContext {
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
