import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class IButton extends StatelessWidget {
  const IButton({
    super.key,
    required this.onTap,
    this.isOutlineButton = true,
    required this.title,
    required this.icon,
  });

  final bool isOutlineButton;
  final VoidCallback onTap;
  final String title;
  final Widget icon;

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: 14,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  color: isOutlineButton ? kBlackColor : kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
