import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
//A widget is a component of an app
class MyAppState extends State<MyApp> {
  bool buttonPressed = true;
  @override
  Widget build(BuildContext context) {
    // instance of application
    return CupertinoApp(
      // implements a single iOS page layout
      home: CupertinoPageScaffold(
        backgroundColor: 
          buttonPressed ? CupertinoColors.white : CupertinoColors.black,
        child: SizedBox.expand(
          child: CupertinoButton(
            child: Text('Button'),
            onPressed: () {
              setState(() {
                buttonPressed = !buttonPressed;
              });
            },
          ),
        ),
        //comma to format text
      ),
    );
  }
}
