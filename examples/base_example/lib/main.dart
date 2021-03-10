import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

void main() {
  FluidoSettings.breakpoints = FluidoBreakpoints(
    sm: 768,
    md: 1024,
    lg: 1280,
    xl: 1536,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluido example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluido example'),
      ),
      body: LayoutWidth(
        sm: Container(
          color: Colors.red,
          child: Text('sm'),
        ),
        md: Container(
          color: Colors.green,
          child: Text('md'),
        ),
        lg: Container(
          color: Colors.blue,
          child: Text('lg'),
        ),
        xl: Container(
          color: Colors.yellow,
          child: Text('xl'),
        ),
        xl2: Container(
          color: Colors.brown,
          child: Text('xl2'),
        ),
      ),
    );
  }
}
