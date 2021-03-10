import 'package:flutter/material.dart';
import 'package:fluido/fluido_settings.dart';

class LayoutSwitchWidget {
  final BuildContext context;
  final FluidoBreakpoints breakpoints;

  final Widget sm;
  final Widget md;
  final Widget lg;
  final Widget xl;
  final Widget xl2;

  const LayoutSwitchWidget({
    @required this.context,
    this.breakpoints,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  }) : assert(context != null);

  Widget get widget {
    var settings = breakpoints ?? FluidoSettings.breakpoints;
    var other = Container();

    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;

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
      },
    );
  }
}
