import 'package:adhicine/components/primary_btn.dart';
import 'package:adhicine/screens/home_screen.dart';
import 'package:adhicine/screens/report_screen.dart';
import 'package:adhicine/utilities/colors.dart';
import 'package:adhicine/utilities/sizes.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentItem = 0;
  bool hasInternetConnection = true;
  final List<Widget> bottomTabs = [
    const HomeScreen(),
    const ReportScreen(),
  ];

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

  void onItemTapped(int index) {
    setState(() {
      currentItem = index;
    });
  }

  // Future<void> openConnectionModal() async {
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(24.0),
  //           color: kWhiteColor,
  //         ),
  //         child: Column(
  //           children: [
  //             const Text(
  //               "Your Device is not Connected",
  //               style: kLargeHeadingStyle,
  //             ),
  //             const SizedBox(
  //               height: kSpaceSizexll,
  //             ),
  //             const FaIcon(
  //               FontAwesomeIcons.xmark,
  //               size: 60,
  //             ),
  //             const Text(
  //               "Connect your device with ",
  //               style: kMediumHeadingStyle,
  //             ),
  //             Row(
  //               children: [
  //                 PrimaryButton(
  //                   title: 'Wifi',
  //                   onTap: () {},
  //                 ),
  //                 PrimaryButton(
  //                   title: 'Bluetooth',
  //                   onTap: () {},
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

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
        body: bottomTabs.elementAt(currentItem),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kPrimaryColor,
          backgroundColor: kWhiteColor,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Report',
              icon: Icon(
                Icons.report,
              ),
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: currentItem,
          unselectedItemColor: kBlackColor,
          onTap: onItemTapped,
          elevation: 3,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kBlackColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
