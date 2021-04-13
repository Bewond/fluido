import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// TODO
class ScreenWrapWidget {
  final BuildContext context;

  final Widget content;
  final FluidoBreakpoints? breakpoints;
  final Widget Function(Widget content)? sm;
  final Widget Function(Widget content)? md;
  final Widget Function(Widget content)? lg;
  final Widget Function(Widget content)? xl;
  final Widget Function(Widget content)? xl2;

  const ScreenWrapWidget(
    this.context, {
    required this.content,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
    this.breakpoints,
  });

  /// TODO
  Widget get widget {
    return ScreenSwitchValue<Widget>(
      context,
      breakpoints: breakpoints,
      sm: _builder(sm),
      md: _builder(md),
      lg: _builder(lg),
      xl: _builder(xl),
      xl2: _builder(xl2),
    ).value;
  }

  Widget _builder(Widget Function(Widget)? build) {
    if (build != null) {
      return build(content);
    } else {
      return content;
    }
  }
}
