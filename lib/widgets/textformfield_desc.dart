import 'package:first_page/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TextFormFieldWithDesc extends StatelessWidget {
  final String description;
  final String hintSentence;
  const TextFormFieldWithDesc(
      {Key? key, required this.description, required this.hintSentence})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description,
          style: TextStyle(color: BackgroundColor.inputColor.withOpacity(0.6)),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: BackgroundColor.inputFillColor,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: BackgroundColor.borderSideColor),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: hintSentence,
            hintStyle:
                TextStyle(color: BackgroundColor.inputColor.withOpacity(0.3)),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
