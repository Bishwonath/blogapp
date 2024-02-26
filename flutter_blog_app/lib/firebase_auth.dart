import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<bool> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      print("Error signing in: $e");
      return false;
    }
  }

  static Future<bool> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      print("Error signing up: $e");
      return false;
    }
  }

  static Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Error signing out: $e");
    }
  }
}
