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
          style: TextStyle(
            color: BackgroundColor.inputColor.withOpacity(0.6),
            fontSize: 12,
          ),
        ),
        SizedBox(height: 9),
        Container(
          height: 42,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(12, 11, 0, 0),
              filled: true,
              fillColor: BackgroundColor.inputFillColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: BackgroundColor.borderSideColor),
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: hintSentence,
              hintStyle: TextStyle(
                color: BackgroundColor.inputColor.withOpacity(0.3),
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(height: 17),
      ],
    );
  }
}
