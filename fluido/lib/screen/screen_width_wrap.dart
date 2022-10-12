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
    super.key,
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
    return ScreenSwitchValue<Widget Function(Widget)>(
      context,
      breakpoints: breakpoints,
      sm: sm ?? _identity,
      md: md,
      lg: lg,
      xl: xl,
      xl2: xl2,
    ).value(content);
  }

  Widget _identity(Widget content) => content;
}
