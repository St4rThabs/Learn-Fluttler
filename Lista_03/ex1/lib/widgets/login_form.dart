import 'package:flutter/material.dart';
import 'package:ex1/models/login.dart';
import 'package:ex1/screens/home_screen.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController =
      TextEditingController(); 
  final TextEditingController passwordController =
      TextEditingController(); 

  Login loginData = Login(); 

  _verifyLoginData() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email == 'admin' && password == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Wrong Password or Email!'),
          action: SnackBarAction(
            label: 'Action', 
            onPressed: () {
            },
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 30)),
          Image(
            width: 200,
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia'
              '/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png',
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 20)), //Padding
          SizedBox(
            width: 340,
            child: TextField(
              controller:
                  emailController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              onSubmitted: (value) => print(value),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 8)), //Padding
          SizedBox(
            width: 340,
            child: TextField(
              controller: passwordController, // Usa o controlador
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 6)), //Padding
          TextButton(
            onPressed: () => {print("Nova senha")},
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 6)),

          SizedBox(
            width: 250,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
              ),
              onPressed: () => {_verifyLoginData()},
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 100)), //Padding
          TextButton(
            onPressed: () => {print("Nova Conta")},
            child: Text(
              "New user? Create account",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}