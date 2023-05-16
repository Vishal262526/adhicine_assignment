import 'package:adhicine/utilities/sizes.dart';
import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import 'common_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedicineCard extends StatelessWidget {
  const MedicineCard({
    super.key,
    required this.leadingIcon,
    required this.leadingIconBackgroundColor,
    required this.backgroundColor,
    required this.medicineName,
    required this.medicineMg,
    required this.medicineType,
    required this.medicineSubname,
    required this.day,
    required this.actionIcon,
    required this.actionIconColor,
    required this.actionTitle,
  });

  final Color backgroundColor;
  final String medicineName;
  final String medicineMg;
  final String medicineType;
  final String medicineSubname;
  final String day;
  final IconData leadingIcon;
  final Color leadingIconBackgroundColor;
  final IconData actionIcon;
  final Color actionIconColor;
  final String actionTitle;

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      backgroundColor: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: leadingIconBackgroundColor,
                ),
                width: 50,
                height: 50,
                child: Center(
                  child: FaIcon(
                    leadingIcon,
                    color: kWhiteColor,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(
                width: kSpaceSizelg,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$medicineName $medicineMg $medicineType",
                    softWrap: true,
                    style: kSmallHeadingStyle,
                  ),
                  const SizedBox(
                    height: kSpaceSizeMd,
                  ),
                  Row(
                    children: [
                      Text(
                        medicineSubname,
                        softWrap: true,
                        style: const TextStyle(
                          fontSize: kFontSizeVsm,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                        ),
                      ),
                      const SizedBox(
                        width: kSpaceSizeMd,
                      ),
                      Text(
                        day,
                        softWrap: true,
                        style: const TextStyle(
                          fontSize: kFontSizeVsm,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              FaIcon(
                actionIcon,
                color: actionIconColor,
                size: kFontSizeVl,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                actionTitle,
                softWrap: true,
                style: const TextStyle(
                  fontSize: kFontSizeMd,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
