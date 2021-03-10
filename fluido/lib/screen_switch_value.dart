import 'package:flutter/material.dart';
import 'package:fluido/fluido_settings.dart';

class ScreenSwitchValue<Type> {
  final BuildContext context;
  final FluidoBreakpoints breakpoints;
  final Type other;

  final Type sm;
  final Type md;
  final Type lg;
  final Type xl;
  final Type xl2;

  const ScreenSwitchValue(
    this.context, {
    this.breakpoints,
    this.other,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  }) : assert(context != null);

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
