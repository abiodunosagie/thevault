import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //SignUp method
  Future<User?> signUpWithEmailAndPassword(String email, String password,
      String firstname, String lastname, String confirmPassword) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } catch (e) {
      print('An error occurred');
    }
    return null;
  }

  //SignIn method below
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print('An error occurred');
    }
    return null;
  }
}
