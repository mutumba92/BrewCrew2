import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  // text field state
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign In To Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              onChanged: (value){
                  email = value;
              },
            ),
            SizedBox(
              height: 20.0,  
            ),
            TextFormField(
              obscureText: true,
              onChanged: (value){
                  setState(() {
                    password = value;
                  });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () async {
                  print(email);
                  print(password);
            }, child: Text("Sign In"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[400]
            ),
            )
          ],
        )),
      ),
    );
  }
}