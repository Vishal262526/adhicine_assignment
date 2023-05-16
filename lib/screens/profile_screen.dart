import 'package:adhicine/components/common_card.dart';
import 'package:adhicine/components/primary_btn.dart';
import 'package:adhicine/components/profile_card.dart';
import 'package:adhicine/components/setting_card.dart';
import 'package:adhicine/firebase/auth.dart';
import 'package:adhicine/screens/login_screen.dart';
import 'package:adhicine/utilities/colors.dart';
import 'package:adhicine/utilities/sizes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? name;

  void getUserName() async {
    name = FirebaseAuth.instance.currentUser!.displayName;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserName();
  }

  void navigateToLoginScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              height: kSpaceSizelg,
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      ExactAssetImage("assets/profile.jpg"),
                                ),
                                const SizedBox(
                                  width: kSpaceSizelg,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Take Care!",
                                      style: TextStyle(
                                        fontSize: kFontSizeMd,
                                        color: kBlackColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      name ?? 'Loading...',
                                      style: const TextStyle(
                                        fontSize: kFontSizeXll,
                                        fontWeight: FontWeight.bold,
                                        color: kBlackColor,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: kSpaceSizelg,
                    ),
                    const Divider(
                      color: kBlackColor,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Settings"),
                          SizedBox(
                            height: kSpaceSizeMd,
                          ),
                          SettingCard(
                            title: 'Notifications',
                            icon: FontAwesomeIcons.bell,
                            subTitle: 'Check your Medicine Notification',
                          ),
                          SizedBox(
                            height: kSpaceSizexl,
                          ),
                          SettingCard(
                            title: 'Sound',
                            icon: FontAwesomeIcons.volumeLow,
                            subTitle: 'Ring, Silent, Vibrate',
                          ),
                          SizedBox(
                            height: kSpaceSizexl,
                          ),
                          SettingCard(
                            title: 'Manage your Account',
                            icon: FontAwesomeIcons.user,
                            subTitle: 'Password, Email ID, Phone Number',
                          ),
                          SizedBox(
                            height: kSpaceSizexl,
                          ),
                          SettingCard(
                            title: 'Notifications',
                            icon: FontAwesomeIcons.bell,
                            subTitle: 'Check your Medicine Notification',
                          ),
                          SizedBox(
                            height: kSpaceSizexl,
                          ),
                          SettingCard(
                            title: 'Notifications',
                            icon: FontAwesomeIcons.bell,
                            subTitle: 'Check your Medicine Notification',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Devoces"),
                          const SizedBox(
                            height: kFontSizeMd,
                          ),
                          CommonCard(
                            child: Column(
                              children: const [
                                SettingCard(
                                  title: 'Connect',
                                  icon: FontAwesomeIcons.connectdevelop,
                                  subTitle: "Bluetooth, Wifi",
                                ),
                                SizedBox(
                                  height: kSpaceSizexll,
                                ),
                                SettingCard(
                                  backgroundColor: kWhiteColor,
                                  title: 'Sound Option',
                                  icon: FontAwesomeIcons.volumeLow,
                                  subTitle: "Ring, Silent, Vibrate",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Caretakers: 03"),
                          const SizedBox(
                            height: kFontSizeMd,
                          ),
                          CommonCard(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                ProfileCard(
                                  name: 'Luna',
                                ),
                                ProfileCard(
                                  name: 'Vishal',
                                ),
                                ProfileCard(
                                  name: 'Rahul',
                                ),
                                ProfileCard(
                                  backgroundCOlor: kWhiteColor,
                                  icon: Icon(Icons.add),
                                  name: 'Add',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Doctor"),
                          const SizedBox(
                            height: kFontSizeMd,
                          ),
                          CommonCard(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: kPrimaryColor,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: kSpaceSizeMd,
                                ),
                                const Text(
                                  'Add Your Doctor',
                                  style: TextStyle(
                                    fontSize: kFontSizeXl,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: kSpaceSizeMd,
                                ),
                                RichText(
                                  text: TextSpan(
                                      style: const TextStyle(
                                          fontSize: kFontSizeMd,
                                          color: kBlackColor),
                                      children: <TextSpan>[
                                        const TextSpan(text: "Or use "),
                                        TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print("Text Tapping Working");
                                            },
                                          text: "Invite Link",
                                          style: const TextStyle(
                                            color: Colors.orange,
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
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: kFontSizeXl,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Terms of Use",
                            style: TextStyle(
                              fontSize: kFontSizeXl,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Rate Us",
                            style: TextStyle(
                              fontSize: kFontSizeXl,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontSize: kFontSizeXl,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: PrimaryButton(
                        isOutlineButton: true,
                        title: 'Logout',
                        onTap: () async {
                          final Auth _auth = Auth();
                          final response = await _auth.signOut();
                          if (response['success']) {
                            navigateToLoginScreen();
                          } else {
                            print("Has Some issue for loggin out the user");
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
