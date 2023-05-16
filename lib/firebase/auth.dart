import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  Future<Map> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return {"success": true, "userCredential": userCredential};
    } catch (e) {
      return {"success": false};
    }
  }

  // For login an existing user
  Future<Map> signupUser({
    required String email,
    required String password,
  }) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        final UserCredential userCred = await auth
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCred.user);

        return {"success": true, "msg": "User Successfully SignUp"};
      } else {
        return {"success": false, "err": "All Fields are Required"};
      }
    } on FirebaseAuthException catch (e) {
      return {"success": false, "err": e.message.toString()};
    } catch (e) {
      return {"success": false, "err": e.toString()};
    }
  }

  // For login an Exisiting User
  Future<Map> signInUser(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return {"success": true};
    } on FirebaseAuthException catch (err) {
      return {"success": false, "err": err.message};
    } catch (err) {
      return {"success": false, "err": err};
    }
  }

  Future<Map> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return {"success": true};
    } catch (e) {
      return {"success": false};
    }
  }
}
