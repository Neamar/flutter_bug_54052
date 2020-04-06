import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView.builder(
          itemBuilder: (context, position) {
            return SamplePage(ValueKey(position), position);
          },
          itemCount: 3,
        ),
      ),
    );
  }
}

class SamplePage extends StatefulWidget {
  final int pageIndex;

  SamplePage(Key key, this.pageIndex) : super(key: key);

  @override
  _SamplePageState createState() => _SamplePageState(pageIndex);
}

class _SamplePageState extends State<SamplePage> {
  final int pageIndex;
  int count = 0;

  _SamplePageState(this.pageIndex);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Page " +
          pageIndex.toString() +
          ".\nClicked " +
          count.toString() +
          " times"),
      onPressed: () {
        setState(() {
          count++;
        });
      },
    );
  }
}
