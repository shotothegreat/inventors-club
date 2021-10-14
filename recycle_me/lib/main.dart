import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recycle Me',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Recycle Me'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    scanner_button_onpress () {
      //open scanner widget (change state)
    }

    //change fontFamily attribute also
    ButtonStyle button_style = ElevatedButton.styleFrom(shadowColor: Color.fromARGB(100, 70, 230, 165),textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 70), //may present scaffolding and orientation issues
            ElevatedButton(
              style: button_style,
              onPressed: () {}, //scanner_button_onpress(),
              child: const Text("Tap to Scan")
              )
          ],
        ),
      ),
    );
  }
}
