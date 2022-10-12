import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Select the specified [Widget] according to the screen or window size.
///
/// Thanks to the incremental system of breakpoints can also be used to show a [Widget] only for certain dimensions.
/// Specify the [breakpoints] parameter to use custom local breakpoints.
class ScreenWidth extends StatelessWidget {
  final FluidoBreakpoints? breakpoints;
  final Widget? sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;
  final Widget? xl2;

  const ScreenWidth({
    super.key,
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
      sm: sm ?? Container(),
      md: md,
      lg: lg,
      xl: xl,
      xl2: xl2,
    ).value;
  }
}
