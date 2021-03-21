import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Selects the specified [Widget] based on the size of the parent widget.
/// It updates automatically as dimensions change.
///
/// Specify the [breakpoints] parameter to use custom local breakpoints.
/// The [other] widget is used in case there is no lower non-null value for a breakpoint.
class LayoutSwitchWidget {
  final BuildContext context;
  final FluidoBreakpoints breakpoints;
  final Widget other;

  final Widget? sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;
  final Widget? xl2;

  const LayoutSwitchWidget(
    this.context, {
    required this.breakpoints,
    required this.other,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  });

  /// The [Widget] selected, depending on the size of the parent widget.
  Widget get widget {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;

        if (width < breakpoints.sm) {
          return sm ?? other;
        } else if (width < breakpoints.md) {
          return md ?? sm ?? other;
        } else if (width < breakpoints.lg) {
          return lg ?? md ?? sm ?? other;
        } else if (width < breakpoints.xl) {
          return xl ?? lg ?? md ?? sm ?? other;
        } else {
          return xl2 ?? xl ?? lg ?? md ?? sm ?? other;
        }
      },
    );
  }
}
