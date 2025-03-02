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
      required this.ontap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
    );
  }
}
