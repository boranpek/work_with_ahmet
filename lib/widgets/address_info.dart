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
                  'EV',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Klee Emily',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Cankaya / Ankara',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Yukari Ovecler Mahallesi',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Turan Gunes Bulvari 1280. sokak 6/4',
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
          height: 42,
        ),
      ],
    );
  }
}
