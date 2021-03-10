import 'package:flutter/material.dart';
import 'package:fluido/fluido_settings.dart';

class ScreenSwitchValue<Type> {
  final BuildContext context;
  final FluidoBreakpoints breakpoints;

  final Type sm;
  final Type md;
  final Type lg;
  final Type xl;
  final Type xl2;

  const ScreenSwitchValue({
    @required this.context,
    this.breakpoints,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  }) : assert(context != null);

  Type get value {
    var settings = breakpoints ?? FluidoSettings.breakpoints;
    var width = MediaQuery.of(context).size.width;
    var other = Container();

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
