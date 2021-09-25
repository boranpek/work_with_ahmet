import 'package:first_page/constants/color_constants.dart';
import 'package:first_page/constants/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TwoDropdownWithDesc extends StatelessWidget {
  final String descriptionOne;
  final String descriptionTwo;
  final String hintTextOne;
  final String hintTextTwo;

  const TwoDropdownWithDesc({
    Key? key,
    required this.context,
    required this.descriptionOne,
    required this.descriptionTwo,
    required this.hintTextOne,
    required this.hintTextTwo,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              descriptionOne,
              style: TextStyle(
                color: BackgroundColor.inputColor.withOpacity(0.6),
                fontSize: 12,
              ),
            ),
            SizedBox(height: 9),
            Container(
              width: (MediaQuery.of(context).size.width - 65) / 2,
              height: 42,
              padding: EdgeInsets.fromLTRB(11, 2, 11, 0),
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
                  hintTextOne,
                  style: TextStyle(
                    color: BackgroundColor.inputColor,
                    fontSize: 14,
                  ),
                ),
                items: [],
              ),
            ),
            SizedBox(height: 17),
          ],
        ),
        SizedBox(width: 17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              descriptionTwo,
              style: TextStyle(
                color: BackgroundColor.inputColor.withOpacity(0.6),
                fontSize: 12,
              ),
            ),
            SizedBox(height: 9),
            Container(
              height: 42,
              padding: EdgeInsets.fromLTRB(11, 2, 11, 0),
              width: (MediaQuery.of(context).size.width - 65) / 2,
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
                  hintTextTwo,
                  style: TextStyle(
                    color: BackgroundColor.inputColor,
                    fontSize: 14,
                  ),
                ),
                items: [],
              ),
            ),
            SizedBox(height: 17),
          ],
        ),
      ],
    );
  }
}
