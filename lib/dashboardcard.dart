import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboardcard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback ontap;
  final Color color;
  const Dashboardcard(
      {super.key,
      required this.title,
      required this.icon,
      required this.ontap, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: InkWell(
        onTap: ontap,
        child: Container(
          width: 250,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(title,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
