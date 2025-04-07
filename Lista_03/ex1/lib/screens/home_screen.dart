
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blue),
      body: Center(child: Text("App")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {"Float"},
        child: Icon(Icons.star), 
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, 
      ),
    );
  }
}
