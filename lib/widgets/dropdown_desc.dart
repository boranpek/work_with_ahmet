import 'package:first_page/constants/color_constants.dart';
import 'package:first_page/constants/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDownWithDesc extends StatelessWidget {
  final String description;
  final String hintText;
  const DropDownWithDesc({
    Key? key,
    required this.description,
    required this.hintText,
  }) : super(key: key);

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
        Container(
          padding: EdgeInsets.fromLTRB(12, 6, 12, 5),
          decoration: BoxDecoration(
            color: BackgroundColor.inputFillColor,
            border: Border.all(color: BackgroundColor.borderSideColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton(
            isExpanded: true,
            underline: SizedBox(),
            elevation: 16,
            icon: SvgPicture.asset(IconConstants.underline_icon),
            disabledHint: Text(
              hintText,
              style: TextStyle(
                color: BackgroundColor.inputColor,
                fontSize: 14,
              ),
            ),
            items: [],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
