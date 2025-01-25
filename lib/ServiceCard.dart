
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Servicecard extends StatelessWidget {
  final String title;
  final IconData icon;
  final ImageProvider img;
  final Color color;
  const Servicecard(
      {super.key,
      required this.title,
      required this.icon,
      required this.img,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 200,
        width: 280,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 7)
            ],
            image: DecorationImage(image: img, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(7)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                const Color(0xff111827).withOpacity(0.9),
              ],
            ),
          ),
          child: (Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Transform.scale(
                          scale: 1,
                          child: CircleAvatar(
                              radius: 25,
                              backgroundColor: color,
                              child:
                                  Icon(size: 25, color: Colors.black, icon))),
                      Text(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, color: Colors.white),
                          title),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
