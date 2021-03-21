import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Selects the specified value according to the screen or window size.
/// It updates automatically as dimensions change and can be used for values of any type.
///
/// This can be very useful with [Flex] to display items in row or column.
/// Specify the [breakpoints] parameter to use custom local breakpoints.
/// The [other] value is used in case there is no lower non-null value for a breakpoint.
class ScreenSwitchValue<Type> {
  final BuildContext context;
  final Type other;

  final FluidoBreakpoints? breakpoints;
  final Type? sm;
  final Type? md;
  final Type? lg;
  final Type? xl;
  final Type? xl2;

  const ScreenSwitchValue(
    this.context, {
    required this.other,
    this.breakpoints,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  });

  /// The [Type] value selected, depending on the screen or window size.
  Type get value {
    var settings = breakpoints ?? FluidoSettings.breakpoints;
    var width = MediaQuery.of(context).size.width;

    if (width < settings.sm) {
      return sm ?? other;
    } else if (width < settings.md) {
      return md ?? sm ?? other;
    } else if (width < settings.lg) {
      return lg ?? md ?? sm ?? other;
    } else if (width < settings.xl) {
      return xl ?? lg ?? md ?? sm ?? other;
    } else {
      return xl2 ?? xl ?? lg ?? md ?? sm ?? other;
    }
  }
}
