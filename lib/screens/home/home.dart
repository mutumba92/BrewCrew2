import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.brown[50],
              appBar: AppBar(
                title: Text("Brew Crew"),
                backgroundColor: Colors.brown[500],
                elevation: 0.0,
                actions: <Widget>[
                  TextButton.icon(onPressed: () async{
                    await _auth.LogOut();

                  }, icon: Icon(Icons.person_4_rounded), label: Text("Log Out"),)
                ],
              ),
    );
  }
}