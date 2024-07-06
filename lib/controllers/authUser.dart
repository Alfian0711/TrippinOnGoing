import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_two/views/features/auth/login.dart';
import 'package:project_two/views/features/home/page_one.dart';

class Signup {

  Future signUserUp({required String email, required String password, required BuildContext context}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(credential);
      return Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
class SignIn {
  Future<void> signUserIn({required String email, required String password, required BuildContext context}) async {
    try {
      // Sign in user with email and password
      UserCredential credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get ID token
      String? token = await credential.user!.getIdToken();
      print('User Token: $token');

      // Navigate to Home screen
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(credential: credential)));

    } on FirebaseAuthException catch (e) {
      String errorMessage;

      if (e.code == 'user-not-found') {
        errorMessage = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'Wrong password provided for that user.';
      } else {
        errorMessage = 'Failed with code: ${e.code}';
      }

      showErrorDialog(context, errorMessage);
      
    } catch (e) {
      showErrorDialog(context, 'An unexpected error occurred. Please try again.');
      print(e);
    }
  }
}

void showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


class Logout {
  Future<void> signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();

    // Navigate to Login screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
}
