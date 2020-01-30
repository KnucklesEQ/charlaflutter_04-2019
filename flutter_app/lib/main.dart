import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({@required this.title});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _contador;

  void _sumarcontador(){
    setState(() {
      _contador++;
    });
  }

  @override
  void initState() {
    _contador=0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          '$_contador',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _sumarcontador();
          },
        child: Icon(Icons.add),
      ),
    );
  }

}
