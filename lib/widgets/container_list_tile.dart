import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerListTile extends StatelessWidget {
  ContainerListTile({Key? key, this.title, this.subTitle, this.editOrAdd})
      : super(key: key);

  final Widget? title;
  final Widget? subTitle;
  final bool? editOrAdd;

  final Color iconTitleColor = Color(0xff00FFFF);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.15,
      child: ListTile(
        title: title,
        subtitle: subTitle,
        trailing: Container(
          width: MediaQuery.of(context).size.width *0.15,
          child: editOrAdd == true ? rowButtonAdd() : rowButtonEdit(),
        ),
      ),
    );
  }

  Row rowButtonAdd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SvgPicture.asset("assets/images/add.svg"),
        Text("Add",
            style: GoogleFonts.poppins(fontSize: 12, color: iconTitleColor))
      ],
    );
  }

  Row  rowButtonEdit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SvgPicture.asset("assets/images/edit.svg"),
        Text("Edit",
            style: GoogleFonts.poppins(fontSize: 12, color: iconTitleColor))
      ],
    );
  }
}
