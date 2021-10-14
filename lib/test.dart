import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {


  Future<bool> showWarning(BuildContext context) async => showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure'),
        actions: [
          ElevatedButton(
              onPressed: (){},
              child: Text("yes")
          )
        ],
      )
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text("data"),
          ),
        ),
        onWillPop: () async{
          print('object');
          final shouldPop = await showWarning(context);
          return shouldPop ?? false;
        }
    );
  }
}
