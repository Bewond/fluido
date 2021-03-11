import 'package:flutter/material.dart';

/// Select the specified widget according to the parent widget orientation.
class LayoutOrientation extends StatelessWidget {
  final Widget landscape;
  final Widget portrait;

  const LayoutOrientation({this.landscape, this.portrait});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          return landscape;
        } else if (orientation == Orientation.portrait) {
          return portrait;
        } else {
          return Container();
        }
      },
    );
  }
}
