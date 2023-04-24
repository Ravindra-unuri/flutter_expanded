import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Expandede Demo'),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              padding: EdgeInsetsDirectional.all(30),
              color: Colors.red,
              child: Text('8'),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsetsDirectional.all(30),
                color: Colors.purple,
                child: Text('5'),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsetsDirectional.all(30),
                color: Colors.blue,
                child: Text('9'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
