import 'package:adhicine/screens/home_screen.dart';
import 'package:adhicine/screens/login_screen.dart';
import 'package:adhicine/screens/main_screen.dart';
import 'package:adhicine/utilities/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // bool isLoggedIn = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(primaryColor: kPrimaryColor),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const MainScreen();
            } else {
              return const LoginScreen();
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
                backgroundColor: Colors.transparent,
              ),
            );
          }
        },
      ),
    );
  }
}
