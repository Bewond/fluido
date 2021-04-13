/// A simple and lightweight package to efficiently create reactive and responsive user interfaces.
///
/// Fluido widgets are based on the use of breakpoints.
/// If no value is specified for a given breakpoints, the lower closest non-null value is used.
/// This allows you to incrementally specify which value you want to get.
///
/// Breakpoints are used to select a value depending on the width of the screen or window, for example with the [ScreenWidth] and [LayoutWidth] widgets.
/// To select a value based on orientation, landscape or portrait, use the [ScreenOrientation] and [LayoutOrientation] widgets.
///
/// Objects named with Screen* refer to the size of the screen or window.
/// Objects named with Layout* refer to the size of the parent widget and can therefore only be used as a widget.
///
/// To globally customize breakpoints use [FluidoSettings].
library fluido;

export 'package:fluido/fluido_settings.dart';
export 'package:fluido/screen_switch_value.dart';
export 'package:fluido/layout_switch_widget.dart';

export 'package:fluido/screen_width.dart';
export 'package:fluido/layout_width.dart';
export 'package:fluido/screen_orientation.dart';
export 'package:fluido/layout_orientation.dart';
export 'package:fluido/screen_width_wrap.dart';

export 'package:fluido/fluido_context.dart';
