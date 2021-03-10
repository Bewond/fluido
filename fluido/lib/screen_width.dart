import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

class ScreenWidth extends StatelessWidget {
  final FluidoBreakpoints breakpoints;
  final Widget sm;
  final Widget md;
  final Widget lg;
  final Widget xl;
  final Widget xl2;

  const ScreenWidth({
    this.breakpoints,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenSwitchValue<Widget>(
      context,
      breakpoints: breakpoints,
      other: Container(),
      sm: sm,
      md: md,
      lg: lg,
      xl: xl,
      xl2: xl2,
    ).value;
  }
}
