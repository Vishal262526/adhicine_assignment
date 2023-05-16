import 'package:adhicine/components/i_btn.dart';
import 'package:adhicine/components/primary_btn.dart';
import 'package:adhicine/components/primary_input.dart';
import 'package:adhicine/firebase/auth.dart';
import 'package:adhicine/screens/home_screen.dart';
import 'package:adhicine/screens/main_screen.dart';
import 'package:adhicine/screens/profile_screen.dart';
import 'package:adhicine/utilities/colors.dart';
import 'package:adhicine/utilities/sizes.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final String emailPlaceholder = "Email Address";
  final String passwordPlaceholder = "Password";

  void checkInternetConnection() async {
    final connResult = await (Connectivity().checkConnectivity());
    if (connResult == ConnectivityResult.none) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "You are not Connected to the Internet",
          ),
          backgroundColor: kPrimaryColor,
        ),
      );
    }
  }

  void navigateToHomeScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MainScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkInternetConnection();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Adhicine",
                style: TextStyle(
                  fontSize: kFontSizeXll,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              const SizedBox(
                height: kSpaceSizeHigh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Sign In",
                    style: kVeryLargeHeadingStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: kSpaceSizexll,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    PrimaryInput(
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.green,
                      ),
                      placeholder: emailPlaceholder,
                      validator: () {},
                    ),
                    const SizedBox(
                      height: kSpaceSizeMd,
                    ),
                    PrimaryInput(
                      secureTextEntry: true,
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      placeholder: passwordPlaceholder,
                      validator: () {},
                    ),
                    const SizedBox(
                      height: kSpaceSizelg,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Forget Password",
                          style: TextStyle(
                            fontSize: kFontSizeSm,
                            color: kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: kSpaceSizexl,
                    ),
                    PrimaryButton(
                      title: 'Login',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: kSpaceSizexl,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: kBlackColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "OR",
                            style: TextStyle(
                              fontSize: kFontSizeSm,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kSpaceSizexlll,
                    ),
                    IButton(
                      icon: Image.asset(
                        'assets/google.png',
                        width: 25,
                      ),
                      title: 'Connect with Google',
                      onTap: () async {
                        final Auth _auth = Auth();
                        final Map response = await _auth.signInWithGoogle();
                        if (response['success']) {
                          print("User Successfully Logged In");
                          navigateToHomeScreen();
                        } else {
                          print("User not Logged in");
                        }
                      },
                    ),
                    const SizedBox(
                      height: kSpaceSizexll,
                    ),
                    RichText(
                      text: TextSpan(
                          style: const TextStyle(
                            fontSize: kFontSizeSm,
                            color: kBlackColor,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: "New to Adhicine?"),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Text Tapping Working");
                                },
                              text: " Sing Up",
                              style: const TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
