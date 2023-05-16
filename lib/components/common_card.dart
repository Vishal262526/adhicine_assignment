import 'package:adhicine/utilities/colors.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    required this.child,
    // required this.backgroundColor
    this.hasShadow = false,
    this.backgroundColor = kLightPrimaryColor,
  });

  final Widget child;
  final Color backgroundColor;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // spreadRadius: 1,
            // color: Colors.white,
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: hasShadow ? 7 : 0,
            // offset: const ffset(3, 0),
          ),
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}
