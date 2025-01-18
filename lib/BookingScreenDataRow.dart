import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookingscreendatarow extends StatelessWidget {
  final String customer;
  final String Service;
  final String Date;
  final String Status;
  final Color Statuscolor;
  final Color statustextcolor;
  final String Price;
  const Bookingscreendatarow(
      {super.key,
      required this.Date,
      required this.Price,
      required this.Service,
      required this.Status,
      required this.Statuscolor,
      required this.statustextcolor,
      required this.customer});

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
              width: 30,
            ),
            SizedBox(
              width: 200,
              child: Text(
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 16),
                  customer),
            ),
            const SizedBox(
              width: 70,
            ),
            SizedBox(
              width: 200,
              child: Text(
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 16),
                  Service),
            ),
            const SizedBox(
              width: 50,
            ),
            SizedBox(width: 200, child: Text(Date)),
            const SizedBox(
              width: 60,
            ),
            Container(
                width: 90,
                height: 27,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Statuscolor,
                ),
                child: Center(
                  child: Text(style: GoogleFonts.roboto(fontSize: 14), Status),
                )),
            const SizedBox(
              width: 180,
            ),
            SizedBox(
              width: 200,
              child: Row(
                children: [
                  const Icon(
                    Icons.currency_rupee,
                    size: 20,
                  ),
                  Text(Price),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
