import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddressCard extends StatelessWidget {
  final String title;
  final String name;
  final String city;
  final String district;
  final String street;

  const AddressCard({
    Key? key,
    required this.title,
    required this.name,
    required this.city,
    required this.district,
    required this.street,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  city,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  district,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  street,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('asset/icons/edit_icon.svg'),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(color: Color(0xff00FFFF)),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
