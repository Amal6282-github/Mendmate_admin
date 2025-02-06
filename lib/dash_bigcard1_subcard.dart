import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashbigcard1subcard extends StatelessWidget {
  final String title;
  final String name;
  final String status;
  final Color statuscolor;
  final String time;
  const Dashbigcard1subcard(
      {super.key,
      required this.title,
      required this.name,
      required this.status,
      required this.time,
      required this.statuscolor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 17),
      ),
      subtitle: Row(
        children: [
          Text(
            name,
            style: GoogleFonts.poppins(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(time),
          )
        ],
      ),
      trailing: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: statuscolor,
          ),
          height: 27,
          width: 90,
          child: Center(
              child: Text(style: GoogleFonts.poppins(fontSize: 15), status))),
    );
  }
}
