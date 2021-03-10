import 'package:flutter/material.dart';

void main() {
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
      body: Column(
        children: [
          ChatMessage(
            alignment: Alignment.centerRight,
            color: Colors.red,
            child: Text("Lorem ipsum dolor sit amet"),
          ),
          ChatMessage(
            alignment: Alignment.centerLeft,
            color: Colors.blue,
            child: Column(
              children: [
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                Text("10:00"),
              ],
            ),
          ),
          ChatMessage(
            alignment: Alignment.center,
            color: Colors.grey,
            child: Text("Nuovi messaggi"),
          ),
          ChatMessage(
            alignment: Alignment.centerRight,
            color: Colors.red,
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
          ),
          ChatMessage(
            alignment: Alignment.centerLeft,
            color: Colors.blue,
            child: Column(
              children: [
                Text("Lorem ipsum dolor sit amet"),
                Text("10:00"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final Alignment alignment;
  final Color color;
  final Widget child;

  const ChatMessage({this.alignment, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: alignment,
        child: Align(
          alignment: alignment,
          child: Container(
            padding: EdgeInsets.all(10),
            color: color,
            child: child,
          ),
        ),
      ),
    );
  }
}
