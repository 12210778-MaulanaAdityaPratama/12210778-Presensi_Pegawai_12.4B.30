import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> login() async {
    try {
      final gsign = await GoogleSignIn().signIn();
      final gauth = await gsign?.authentication;
      final mandat = GoogleAuthProvider.credential(
          accessToken: gauth?.accessToken, idToken: gauth?.idToken);
      await _firebaseAuth.signInWithCredential(mandat);
      await GoogleSignIn().signOut();

      notifyListeners();
    } catch (e) {
      print('kesalahan sign in : $e');
    }
    return _firebaseAuth.currentUser;
  }

  Future logout() async {
    try {
      await _firebaseAuth.signOut();
      notifyListeners();
    } catch (e) {
      print('kesalahan logout : $e');
    }
  }

  User? user() => _firebaseAuth.currentUser;
}
