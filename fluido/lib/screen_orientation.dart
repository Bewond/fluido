import 'package:flutter/material.dart';

class ScreenOrientation extends StatelessWidget {
  final Widget landscape;
  final Widget portrait;

  const ScreenOrientation({this.landscape, this.portrait});

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
