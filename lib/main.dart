import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'カウンター',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'カウンター'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      if( _counter > 0){
        _counter--;
      }
    });
  }

  void _resetCounter(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'カウンター',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              width: 200.0,
              height: 50.0,
              child: ButtonTheme(
                minWidth: 50.0,
                height: 50.0,
                child: ElevatedButton(
                    onPressed: (){
                      _incrementCounter();
                    },
                    child: Text('+')
                ),
              ),
            ),

            SizedBox(
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                  onPressed: (){
                    _decrementCounter();
                  },
                  child: Text('-')
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  _resetCounter();
                },
                child: Text('リセット')
            ),
          ],
        ),
      ),
    );
  }
}
