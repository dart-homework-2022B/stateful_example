import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int index = 0;
  List<String> paths = [
    'images/pexels-arunodhai-v-568948.jpg',
    'images/pexels-mohamed-almari-1591382.jpg',
    'images/pexels-rahul-pandit-1212487.jpg',
    'images/pexels-roberto-nickson-2486168.jpg',
    'images/pexels-tausif-hossain-1226302.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellow,
              height: 700,
              //alignment: Alignment.center,
              child: Image.asset(
                paths[index % 5],
                //height: 500,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              color: Colors.red,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      if (index > 0)
                        setState(() {
                          index--;
                        });
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  Text(index.toString()),
                  TextButton(
                    onPressed: () {
                      if (index < 4)
                        setState(() {
                          index++;
                        });
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(),
//       ),
//     );
//   }
// }
