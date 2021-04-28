import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Selects the specified [Widget] based on the size of the parent widget.
/// It updates automatically as dimensions change.
///
/// Specify the [breakpoints] parameter to use custom local breakpoints.
class LayoutSwitchWidget {
  final BuildContext context;

  final Widget sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;
  final Widget? xl2;
  final FluidoBreakpoints? breakpoints;

  const LayoutSwitchWidget(
    this.context, {
    required this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
    this.breakpoints,
  });

  /// The [Widget] selected, depending on the size of the parent widget.
  Widget get widget {
    return LayoutBuilder(
      builder: (context, constraints) {
        var settings = breakpoints ?? FluidoSettings.breakpoints;
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
