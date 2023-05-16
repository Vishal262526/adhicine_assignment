import 'package:adhicine/utilities/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    super.key,
    required this.title,
    required this.icon,
    required this.subTitle,
    this.backgroundColor,
  });
  final String title;
  final Color? backgroundColor;
  final String subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          FaIcon(
            icon,
            size: 35,
          ),
          const SizedBox(
            width: kSpaceSizelg,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: kFontSizeLG,
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                    fontSize: kFontSizeSm,
                    color: Color.fromARGB(255, 163, 163, 163)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
