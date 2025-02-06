import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashbigcard2subcard extends StatelessWidget {
  final String title;
  final String value1;
  const Dashbigcard2subcard(
      {super.key, required this.title, required this.value1});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 17),
      ),
      trailing: Text(
          style: GoogleFonts.poppins(fontWeight: FontWeight.w200, fontSize: 15),
          value1),
    );
  }
}
