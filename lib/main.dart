import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Widget a = Container(
    color: Colors.blue,
    height: 100,
    width: 100,
  );
  Widget b = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      )
    ],
  );
  Widget c = Container(
    color: Colors.blue,
    height: 100,
    width: 100,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.yellow,
            height: 710,
            alignment: Alignment.center,
            child: c,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    c = a;
                  });
                },
                child: Icon(
                  Icons.list,
                  size: 50,
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      c = b;
                    });
                  },
                  child: Icon(
                    Icons.grid_3x3,
                    size: 50,
                  ))
            ],
          )
        ],
      )),
    );
  }
}
