import 'dart:async';

import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  CustomUser? _userFromFirebase(User user){

      return CustomUser(user.uid);

  }


  // listen to changed user stream
  Stream<CustomUser?> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFirebase(user!));
  }

  // sign in anonymously
  Future signInAnon() async {
    try {

      // class was renamed from AuthResult to UserCredential
        UserCredential result =  await _auth.signInAnonymously();

        // class renamed from Firebase User to User
        User? user = result.user;
        return _userFromFirebase(user!);


    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password


  // sign up with email and password


  // log out
  Future LogOut() async {
      try {
        return await _auth.signOut();
      } catch(e){
        print(e.toString());
        return null;
      }
  }

}