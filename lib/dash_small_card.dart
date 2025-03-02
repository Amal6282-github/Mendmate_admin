import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashsmallcard extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData? currency;
  final String values;
  final Color color;
  const Dashsmallcard(
      {super.key,
      required this.title,
      required this.icon,
      this.currency,
      required this.values,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(style: GoogleFonts.mulish(fontSize: 15), title),
                ),
                Row(
                  children: [
                    Icon(currency),
                    Text(
                      values,
                      style: GoogleFonts.kanit(
                          fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Transform.scale(
                scale: 2,
                child: CircleAvatar(
                    radius: 25,
                    backgroundColor: color,
                    child: Icon(size: 15, color: Colors.white, icon))),
          )
        ],
      ),
    );
  }
}
