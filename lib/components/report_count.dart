import 'package:adhicine/utilities/sizes.dart';
import 'package:flutter/material.dart';

class ReportCount extends StatelessWidget {
  const ReportCount({
    super.key,
    required this.count,
    required this.title,
  });
  final int count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            fontSize: kFontSizeXll,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const SizedBox(
          height: kSpaceSizeMd,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.black.withOpacity(0.5), fontSize: kFontSizeMd),
        ),
      ],
    );
  }
}
