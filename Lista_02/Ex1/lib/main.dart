import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Is Fun!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Flutter Is Fun!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment(0.0, 0.0), 
        child: Align(
          alignment: Alignment(-0.40, -0.70), 
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.redAccent,
            padding: EdgeInsets.all(10.0),
            width: 150.0,
            height: 150.0,
            child: Text(
              'Hi Mom',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
