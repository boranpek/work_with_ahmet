import 'dart:ui';
import 'package:first_page/constants/color_constants.dart';
import 'package:first_page/constants/icon_constants.dart';
import 'package:first_page/widgets/dropdown_desc.dart';
import 'package:first_page/widgets/switch_with_button.dart';
import 'package:first_page/widgets/textformfield_desc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/customized_elevatedButton.dart';
import 'widgets/twodropdown_desc.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key? key}) : super(key: key);

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.panelColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            buildPanel(),
            buildInputArea(),
          ],
        ),
      ),
    );
  }

  Expanded buildInputArea() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: BackgroundColor.areaColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: ListView(
            children: [
              SizedBox(height: 28),
              TextFormFieldWithDesc(
                  description: 'First name',
                  hintSentence: 'Enter your first name'),
              TextFormFieldWithDesc(
                  description: 'Last Name',
                  hintSentence: 'Enter your last name'),
              DropDownWithDesc(description: 'Country', hintText: 'Turkey'),
              TwoDropdownWithDesc(
                context: context,
                descriptionOne: 'City',
                descriptionTwo: 'District',
                hintTextOne: 'Select city',
                hintTextTwo: 'Select district',
              ),
              DropDownWithDesc(
                  description: 'Neighborhood', hintText: 'Select neighborhood'),
              TextFormFieldWithDesc(
                  description: 'Address',
                  hintSentence: 'Enter your building no, floor, flat'),
              TextFormFieldWithDesc(
                  description: 'Address Title',
                  hintSentence: 'Enter address title'),
              SwitchWithButton(
                description: 'Make this my primary address',
              ),
              SizedBox(
                height: 28,
              ),
              CustomizedElevatedButton(description: 'Save Address'),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPanel() {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        children: [
          Container(
            height: 58,
            alignment: Alignment.centerLeft,
            color: BackgroundColor.panelColor,
            child: Container(child: SvgPicture.asset(IconConstants.back_icon)),
          ),
          Container(
            height: 88,
            alignment: Alignment.center,
            color: BackgroundColor.panelColor,
            child: Row(
              children: [
                Text(
                  'Add Address',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
