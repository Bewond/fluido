import 'package:flutter/material.dart';
import 'package:fluido/fluido_settings.dart';

class LayoutWidth extends StatelessWidget {
  final Widget sm;
  final Widget md;
  final Widget lg;
  final Widget xl;
  final Widget xl2;

  final FluidoBreakpoints breakpoints;

  const LayoutWidth({
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
    this.breakpoints,
  });

  @override
  Widget build(BuildContext context) {
    var settings = breakpoints ?? FluidoSettings.breakpoints;

    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;

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
      },
    );
  }
}
