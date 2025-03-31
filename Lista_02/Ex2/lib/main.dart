import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(
  appBar: AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: const [
        Text(
          'My Home Page',
          style: TextStyle(fontSize: 28.0, color: Colors.white),
        ),
      ],
    ),
    backgroundColor: Colors.deepPurple,
  ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Padding(padding: const EdgeInsets.all(10.0)),
                  const Text('Hello, World!', style: TextStyle(fontSize: 20.0),),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      print('Click!');
                    },
                    child: const Text('Button'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text('Hello, World!'),
    );
  }
}