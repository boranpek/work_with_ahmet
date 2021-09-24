import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants/color_constants.dart';
import 'constants/icon_constants.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPanel(),
        buildTextFormFieldSection(),
      ],
    );
  }

  Column buildPanel() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
          color: BackgroundColor.panelColor,
          child: Container(child: SvgPicture.asset(IconConstants.back_icon)),
        ),
        Container(
          height: 95,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
          color: BackgroundColor.panelColor,
          child: Text(
            'Add Adress',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15)
      ],
    );
  }

  Column buildTextFormFieldSection() {
    return Column();
  }
}
