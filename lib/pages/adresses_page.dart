import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/container_list_tile.dart';

class AdressesPage extends StatelessWidget {
  AdressesPage({Key? key}) : super(key: key);

  final List<String> adressTitle = ["Ev", "İş"];
  final List<String> adressesSubTitle = [
    "Klee Emily\nÇankaya/Ankara\nYukarı Öveçler Mahallesi\nTuran Güneş Bulvarı 1280.sokak 6/4",
    "Klee Emily\nÇankaya/Ankara\nYukarı Öveçler Mahallesi\nTuran Güneş Bulvarı 1280.sokak 6/4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(CupertinoIcons.back),
      ),
      body: Column(
        children: <Widget>[
          ContainerListTile(
            editOrAdd: true,
            title: Text(
              "My Adressses",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: containerListViewBuilder(),
          ),
        ],
      ),
    );
  }

  Widget containerListViewBuilder() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff0A1430),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: ListView.builder(
          itemCount: adressTitle.length,
          itemBuilder: (context, index) {
            print("İndex im: $index");
            return Padding(
                padding: const EdgeInsets.only(
                    top: 28, left: 24, right: 24, bottom: 50),
                child: ContainerListTile(
                  editOrAdd: false,
                  title: Text(
                    adressTitle[index],
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  subTitle: Text(
                    adressesSubTitle[index],
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.white54,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ));
          }),
    );
  }
}
