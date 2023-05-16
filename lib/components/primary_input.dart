import 'package:adhicine/utilities/sizes.dart';
import 'package:flutter/material.dart';

class PrimaryInput extends StatelessWidget {
  const PrimaryInput({
    super.key,
    required this.placeholder,
    required this.validator,
    required this.icon,
    this.secureTextEntry = false,
  });

  final String placeholder;
  final Function validator;
  final Icon icon;
  final bool secureTextEntry;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secureTextEntry,
      decoration: InputDecoration(
        icon: icon,
        hintText: placeholder,
        hintStyle: kParagraphStyle,
      ),
      validator: validator(),
    );
  }
}
