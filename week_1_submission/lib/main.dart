import 'package:flutter/material.dart';
void main() {
  runApp(CounterApp());
}
class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter()  {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      backgroundColor: Colors.lightGreen ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is a Counting operator. Press "+" to increase by 1 and Press "-" to decrease by 1',
                  style: TextStyle(fontSize: 15),
            ),
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children : [
        const Spacer(),
        const Spacer(),
        FloatingActionButton(
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
        const Spacer(),
        FloatingActionButton(
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
      ),
        const Spacer(),
    ]
      )
    );
  }
}