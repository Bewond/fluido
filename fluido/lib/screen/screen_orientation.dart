import 'package:flutter/material.dart';

/// Select the specified widget according to the screen orientation.
class ScreenOrientation extends StatelessWidget {
  final Widget landscape;
  final Widget portrait;

  const ScreenOrientation(
      {super.key, required this.landscape, required this.portrait});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return landscape;
    } else if (orientation == Orientation.portrait) {
      return portrait;
    } else {
      return Container();
    }
  }
}
