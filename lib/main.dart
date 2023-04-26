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
            Widget_customContainer(
              col: Colors.red,
              flv: 8
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Widget_customContainer(
                      col: Colors.indigo,
                      flv: 5
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Widget_customContainer(
                                          col: Colors.green,
                                          flv: 1
                                      ),
                                      Widget_customContainer(
                                          col: Colors.lightBlue,
                                          flv: 1
                                      ),
                                    ],
                                  ),
                                ),
                                Widget_customContainer(
                                    col: Colors.brown,
                                    flv: 2
                                ),
                              ],
                            )),
                        Widget_customContainer(
                            col: Colors.purple,
                            flv: 3
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
           
          ],
        ),
      ),
    ));
  }
}
Widget_customContainer({
  required int flv,
  required Color col,
}){
  return Expanded(
    flex: flv,
    child: Container(
      constraints: BoxConstraints.expand(),
      // padding: EdgeInsetsDirectional.all(20),
      color: col,
      child: Center(child: Text('$flv',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
        ),
      )),
    ),
  );
}
