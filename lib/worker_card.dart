import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Workercard extends StatelessWidget {
  final String Name;
  final String Categories;
  final String Date_Of_joined;
  const Workercard(
      {super.key,
      required this.Date_Of_joined,
      required this.Categories,
      required this.Name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 200,
              child: Text(
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 16),
                  Name),
            ),
            const SizedBox(
              width: 110,
            ),
            SizedBox(
              width: 200,
              child: Text(
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 16),
                  Categories),
            ),
            const SizedBox(
              width: 130,
            ),
            SizedBox(width: 200, child: Text(Date_Of_joined)),
            const SizedBox(
              width: 160,
            ),
            Container(
              decoration: const BoxDecoration(shape: BoxShape.rectangle),
              child: TextButton(
                onPressed: () {},
                child: const Text(style: TextStyle(color: Colors.blue), 'Details'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
