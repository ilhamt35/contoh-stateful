import 'dart:math';

import 'package:flutter/material.dart';

class StatefulApp extends StatefulWidget {
  const StatefulApp({Key? key}) : super(key: key);

  @override
  _StatefulAppState createState() => _StatefulAppState();
}

class _StatefulAppState extends State<StatefulApp> {
  double radius = 0;
  int data = 0;
  List<Widget> widgets = [];
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  radius.toStringAsFixed(0),
                  style: TextStyle(fontSize: 10 + radius.toDouble()),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(radius)),
                ),
                Slider(
                    min: 0,
                    max: 50,
                    value: radius,
                    onChanged: (double value) {
                      setState(() {
                        radius = value;
                      });
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          data++;
                          widgets.add(Text(
                            'Data Ke-$data',
                            style: TextStyle(fontSize: 30),
                          ));
                        });
                      },
                      child: Text('Tambah'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          data--;
                          widgets.removeLast();
                        });
                      },
                      child: Text('Kurang'),
                    ),
                  ],
                ),
                Column(
                  children: widgets,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 50.0 + random.nextInt(100),
                    height: 50.0 + random.nextInt(100),
                    color: Color.fromARGB(255, random.nextInt(256),
                        random.nextInt(256), random.nextInt(256)),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
