import 'package:fluido/fluido_settings.dart';
import 'package:flutter/material.dart';

class LayoutWidth extends StatelessWidget {
  final Widget sm;
  final Widget md;
  final Widget lg;
  final Widget xl;
  final Widget xl2;

  final FluidoBreakpoints breakpoints;

  const LayoutWidth({this.sm, this.md, this.lg, this.xl, this.xl2, this.breakpoints});

  @override
  Widget build(BuildContext context) {
    var _breakpoints = breakpoints ?? FluidoSettings.breakpoints;

    return Container();
  }
}
