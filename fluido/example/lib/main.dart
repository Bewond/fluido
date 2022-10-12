import 'package:flutter/material.dart';
import 'package:fluido/fluido.dart';

void main() {
  FluidoSettings.breakpoints = const FluidoBreakpoints(
    sm: 768,
    md: 1024,
    lg: 1280,
    xl: 1536,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fluido example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluido example'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: FluidoSettings.breakpoints.xl.toDouble(),
          ),
          child: Column(
            children: [
              ScreenWidth(
                sm: Container(
                  color: Colors.red,
                  child: const Text('sm'),
                ),
                md: Container(
                  color: Colors.green,
                  child: const Text('md'),
                ),
                lg: Container(
                  color: Colors.blue,
                  child: const Text('lg'),
                ),
                xl: Container(
                  color: Colors.yellow,
                  child: const Text('xl'),
                ),
                xl2: Container(
                  color: Colors.brown,
                  child: const Text('xl2'),
                ),
              ),
              ScreenOrientation(
                portrait: Container(
                  color: Colors.white10,
                  child: const Text('portrait'),
                ),
                landscape: Container(
                  color: Colors.white24,
                  child: const Text('landscape'),
                ),
              ),
              const ScreenWidth(xl: Spacer()),
              Expanded(
                child: Flex(
                  direction: context.screenSwitchValue(
                    sm: Axis.vertical,
                    lg: Axis.horizontal,
                  ),
                  children: [
                    Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Container(color: Colors.black26),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Container(
                          color: ScreenSwitchValue(
                            context,
                            sm: Colors.black38,
                            lg: Colors.blue,
                            xl2: Colors.brown,
                          ).value,
                        ),
                      ),
                    ),
                    Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Container(color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
