import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

/// Select the [Widget] obtained as a result of the specified [Function]
/// according to the screen or window size.
/// Functions take as input the [content] widget passed as a parameter.
///
/// Thanks to the incremental system of breakpoints it can be useful
/// to wrap a [Widget] with another only for certain dimensions.
/// Specify the [breakpoints] parameter to use custom local breakpoints.
class ScreenWidthWrap extends StatelessWidget {
  final Widget content;
  final FluidoBreakpoints? breakpoints;
  final Widget Function(Widget content)? sm;
  final Widget Function(Widget content)? md;
  final Widget Function(Widget content)? lg;
  final Widget Function(Widget content)? xl;
  final Widget Function(Widget content)? xl2;

  const ScreenWidthWrap({
    required this.content,
    this.breakpoints,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xl2,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenSwitchValue<Widget>(
      context,
      breakpoints: breakpoints,
      sm: _builder(sm) ?? content,
      md: _builder(md),
      lg: _builder(lg),
      xl: _builder(xl),
      xl2: _builder(xl2),
    ).value;
  }

  Widget? _builder(Widget Function(Widget)? build) {
    if (build != null) {
      return build(content);
    } else {
      return null;
    }
  }
}
