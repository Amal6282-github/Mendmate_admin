import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/dash_big_card_2_sub_card.dart';

class Dashbigcard2 extends StatelessWidget {
  const Dashbigcard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        width: 580,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Text(
                      'Popular Services',
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Dashbigcard2subcard(
                      title: 'plumbing work', value1: '45 Bookings'),
                  const Divider(
                    thickness: 1,
                  ),
                  const Dashbigcard2subcard(
                      title: 'Carpentry', value1: '32 Bookings'),
                  const Divider(
                    thickness: 1,
                  ),
                  const Dashbigcard2subcard(
                      title: 'Electrical work', value1: '28 Bookings'),
                  const Divider(
                    thickness: 1,
                  ),
                  const Dashbigcard2subcard(
                      title: 'painting', value1: '58 Bookings'),
                  const Divider(
                    thickness: 1,
                  ),
                  const Dashbigcard2subcard(
                      title: 'cieling work', value1: '22 Bookings'),
                  const Divider(
                    thickness: 1,
                  ),
                  const Dashbigcard2subcard(
                      title: 'CCTV Work', value1: '7 Bookings'),
                  const Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
