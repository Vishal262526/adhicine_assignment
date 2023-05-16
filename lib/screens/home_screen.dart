import 'package:adhicine/components/medicine_card.dart';
import 'package:adhicine/screens/profile_screen.dart';
import 'package:adhicine/utilities/sizes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? name;

  void getUserFirstName() {
    setState(() {
      name = FirebaseAuth.instance.currentUser!.displayName!.split(" ")[0];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final User? user = FirebaseAuth.instance.currentUser;
    print(user);
    getUserFirstName();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name != null ? "Hi $name" : 'Loading...',
                            style: kLargeHeadingStyle),
                        const SizedBox(
                          height: kSpaceSizeSm,
                        ),
                        const Text(
                          "5 Medicine Left",
                          style: TextStyle(
                            fontSize: kFontSizeSm,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: ExactAssetImage("assets/profile.jpg"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: kSpaceSizexll,
                ),
                const Text(
                  "Morning at 08:00 PM",
                  style: TextStyle(fontSize: kFontSizeXl, color: kBlackColor),
                ),
                const SizedBox(
                  height: kSpaceSizelg,
                ),
                const MedicineCard(
                  backgroundColor: kLightPrimaryColor,
                  leadingIcon: FontAwesomeIcons.droplet,
                  medicineName: 'Calpol',
                  medicineMg: '500 mg',
                  medicineType: 'Tablet',
                  medicineSubname: 'After Breakfast',
                  day: '01',
                  actionIcon: Icons.done,
                  actionTitle: 'Taken',
                  actionIconColor: Colors.green,
                  leadingIconBackgroundColor: Colors.pink,
                ),
                const SizedBox(
                  height: kSpaceSizeMd,
                ),
                const MedicineCard(
                  backgroundColor: kLightPrimaryColor,
                  leadingIcon: FontAwesomeIcons.capsules,
                  medicineName: 'Calpol',
                  medicineMg: '500 mg',
                  medicineType: 'Tablet',
                  medicineSubname: 'After Breakfast',
                  day: '01',
                  actionIcon: Icons.done,
                  actionTitle: 'Taken',
                  actionIconColor: Colors.green,
                  leadingIconBackgroundColor: Colors.pink,
                ),
                const SizedBox(
                  height: kSpaceSizexll,
                ),
                const Text(
                  "Afternoon at 02:00 AM",
                  style: TextStyle(fontSize: kFontSizeXl, color: kBlackColor),
                ),
                const SizedBox(
                  height: kSpaceSizelg,
                ),
                const MedicineCard(
                  backgroundColor: kLightPrimaryColor,
                  leadingIcon: FontAwesomeIcons.droplet,
                  medicineName: 'Calpol',
                  medicineMg: '500 mg',
                  medicineType: 'Tablet',
                  medicineSubname: 'After Breakfast',
                  day: '01',
                  actionIcon: Icons.done,
                  actionTitle: 'Taken',
                  actionIconColor: Colors.green,
                  leadingIconBackgroundColor: Colors.pink,
                ),
                const SizedBox(
                  height: kSpaceSizexll,
                ),
                const Text(
                  "Night at 9:00 PM",
                  style: TextStyle(
                    fontSize: kFontSizeXl,
                    color: kBlackColor,
                  ),
                ),
                const SizedBox(
                  height: kSpaceSizelg,
                ),
                const MedicineCard(
                  backgroundColor: kLightPrimaryColor,
                  leadingIcon: FontAwesomeIcons.droplet,
                  medicineName: 'Calpol',
                  medicineMg: '500 mg',
                  medicineType: 'Tablet',
                  medicineSubname: 'After Breakfast',
                  day: '01',
                  actionIcon: Icons.done,
                  actionTitle: 'Taken',
                  actionIconColor: Colors.green,
                  leadingIconBackgroundColor: Colors.pink,
                ),
                const SizedBox(
                  height: kSpaceSizeMd,
                ),
                const MedicineCard(
                  backgroundColor: kLightPrimaryColor,
                  leadingIcon: FontAwesomeIcons.droplet,
                  medicineName: 'Calpol',
                  medicineMg: '500 mg',
                  medicineType: 'Tablet',
                  medicineSubname: 'After Breakfast',
                  day: '01',
                  actionIcon: Icons.done,
                  actionTitle: 'Taken',
                  actionIconColor: Colors.green,
                  leadingIconBackgroundColor: Colors.pink,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
