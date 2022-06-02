import 'package:chiakma/components/custom_suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final String labelText;
  final String svgImage;
  const TextInputField(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.labelText,
      required this.textInputType,
      required this.svgImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: CustomSuffixIcon(
          svgIcon: svgImage,
        ),
      ),
      obscureText: isPass,
    );
  }
}
