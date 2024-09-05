import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/screens/wrapper.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Initializing');

  Platform.isAndroid
    ? await Firebase.initializeApp(
        options: FirebaseOptions(
        apiKey: "AIzaSyCVullk1k4dejKlyjlrR3WvfkSUdG3mGIg",
        appId: "1:883936752131:android:c74301a248d84e08775436",
        messagingSenderId: "883936752131",
        projectId: "brew-crew-38c3b",
    ),
  ) : 
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(
      value: AuthService().user,
      initialData: null,
      catchError: (_, __) => null,
      child: MaterialApp(
        
        home: Wrapper(),
      ),
    );
  }
}
