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
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                constraints: BoxConstraints.expand(),
                padding: EdgeInsetsDirectional.all(30),
                color: Colors.red,
                child: Center(child: Text('8',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                )),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsetsDirectional.all(30),
                color: Colors.blue,
                child: Center(child: Text('5',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
