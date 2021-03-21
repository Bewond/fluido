import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Selects the specified value according to the screen or window size.
/// It updates automatically as dimensions change and can be used for values of any type.
///
/// This can be very useful with [Flex] to display items in row or column.
/// Specify the [breakpoints] parameter to use custom local breakpoints.
class ScreenSwitchValue<Type> {
  final BuildContext context;

  final Type sm;
  final Type? md;
  final Type? lg;
  final Type? xl;
  final Type? xl2;
  final FluidoBreakpoints? breakpoints;

  const ScreenSwitchValue(
    this.context, {
    required this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
    this.breakpoints,
  });

  /// The [Type] value selected, depending on the screen or window size.
  Type get value {
    var settings = breakpoints ?? FluidoSettings.breakpoints;
    var width = MediaQuery.of(context).size.width;

    if (width < settings.sm) {
      return sm;
    } else if (width < settings.md) {
      return md ?? sm;
    } else if (width < settings.lg) {
      return lg ?? md ?? sm;
    } else if (width < settings.xl) {
      return xl ?? lg ?? md ?? sm;
    } else {
      return xl2 ?? xl ?? lg ?? md ?? sm;
    }
  }
}
