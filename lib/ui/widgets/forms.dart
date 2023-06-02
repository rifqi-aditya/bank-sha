import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final bool obscureText;
  final String title;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomFormField({
    required this.title,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.controller,
    this.isShowTitle = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        if (isShowTitle) const SizedBox(height: 8),
        TextFormField(
          autocorrect: false,
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: !isShowTitle ? title : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
