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
      body: Padding(
        padding: EdgeInsets.all(
          ScreenSwitchValue(
            context,
            sm: 0.0,
            xl: 100,
          ).value,
        ),
        child: Column(
          children: [
            LayoutWidth(
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
            ScreenOrientation(
              portrait: Container(
                color: Colors.white10,
                child: Text('portrait'),
              ),
              landscape: Container(
                color: Colors.white24,
                child: Text('landscape'),
              ),
            ),
            Spacer(),
            Expanded(
              child: Flex(
                direction: ScreenSwitchValue(
                  context,
                  sm: Axis.vertical,
                  lg: Axis.horizontal,
                ).value,
                children: [
                  Flexible(
                    child: FractionallySizedBox(
                      child: Container(color: Colors.black26),
                      widthFactor: 1,
                      heightFactor: 1,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: FractionallySizedBox(
                      child: Container(color: Colors.black38),
                      widthFactor: 1,
                      heightFactor: 1,
                    ),
                  ),
                  Flexible(
                    child: FractionallySizedBox(
                      child: Container(color: Colors.black45),
                      widthFactor: 1,
                      heightFactor: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
