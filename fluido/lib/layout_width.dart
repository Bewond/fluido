import 'package:flutter/material.dart';
import 'package:fluido/fluido_settings.dart';
import 'package:fluido/layout_switch_widget.dart';

class LayoutWidth extends StatelessWidget {
  final FluidoBreakpoints breakpoints;
  final Widget sm;
  final Widget md;
  final Widget lg;
  final Widget xl;
  final Widget xl2;

  const LayoutWidth({
    this.breakpoints,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutSwitchWidget(
      context,
      breakpoints: breakpoints,
      sm: sm,
      md: md,
      lg: lg,
      xl: xl,
      xl2: xl2,
    ).widget;
  }
}
