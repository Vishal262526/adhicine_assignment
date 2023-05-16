import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    this.icon,
    this.image,
    this.backgroundCOlor,
  });
  final String name;
  final Icon? icon;
  final AssetImage? image;
  final Color? backgroundCOlor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: backgroundCOlor,
          radius: 30,
          backgroundImage: image,
          child: Center(
            child: icon,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(name),
      ],
    );
  }
}
