import 'package:adhicine/components/common_card.dart';
import 'package:adhicine/components/report_count.dart';
import 'package:adhicine/utilities/colors.dart';
import 'package:adhicine/utilities/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/medicine_card.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String name = 'Garima';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Report", style: kLargeHeadingStyle),
                const SizedBox(
                  height: kSpaceSizexl,
                ),
                CommonCard(
                  hasShadow: true,
                  backgroundColor: kWhiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Today's Report", style: kLargeHeadingStyle),
                      const SizedBox(
                        height: kSpaceSizelg,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReportCount(count: 5, title: 'Total'),
                          ReportCount(count: 3, title: 'Taken'),
                          ReportCount(count: 1, title: 'Missed'),
                          ReportCount(count: 1, title: 'Snozed'),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: kSpaceSizexl,
                ),
                CommonCard(
                  hasShadow: true,
                  backgroundColor: kWhiteColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Check Dashboard",
                            style: TextStyle(
                              fontSize: kFontSizeXl,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: kSpaceSizelg,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Here you can find everything related to your active",
                              style: TextStyle(
                                fontSize: kFontSizeSm,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        FontAwesomeIcons.circle,
                        size: 40,
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: kSpaceSizexl,
                ),
                CommonCard(
                  hasShadow: true,
                  backgroundColor: kWhiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Today's Report",
                        style: TextStyle(
                          fontSize: kFontSizeXll,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      const SizedBox(
                        height: kSpaceSizelg,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kPrimaryColor,
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kLightPrimaryColor,
                            child: Text(
                              '2',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kLightPrimaryColor,
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kLightPrimaryColor,
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kLightPrimaryColor,
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kLightPrimaryColor,
                            child: Text(
                              '6',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: kLightPrimaryColor,
                            child: Text(
                              '7',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: kFontSizeMd,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: kFontSizeXll,
                ),
                const Text(
                  "Night at 9:00 PM",
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
