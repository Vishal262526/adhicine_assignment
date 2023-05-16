import 'package:adhicine/utilities/sizes.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isOutlineButton = false,
    this.icon,
  });

  final String title;
  final VoidCallback onTap;
  final bool isOutlineButton;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: isOutlineButton ? Border.all(color: kPrimaryColor) : null,
          borderRadius: BorderRadius.circular(25.0),
          color: isOutlineButton ? Colors.transparent : kPrimaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 18),
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          title,
          style: TextStyle(
            fontSize: kFontSizeMd,
            fontWeight: FontWeight.bold,
            color: isOutlineButton ? kBlackColor : kWhiteColor,
          ),
        ),
      ),
    );
  }
}
