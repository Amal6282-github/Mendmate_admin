import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/DashBigCard1Subcard.dart';

class Dashbigcard1 extends StatelessWidget {
  const Dashbigcard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: 580,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Text(
                    'Recent Bookings',
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const Dashbigcard1subcard(
                  title: 'Plumbing work',
                  name: 'john Doe ',
                  status: 'Pending',
                  time: 'Today At 2.30 PM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Dashbigcard1subcard(
                  title: 'Carpentry',
                  name: 'biju menon ',
                  status: 'Pending',
                  time: 'Today At 9.30 PM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Dashbigcard1subcard(
                  title: 'Electrical work',
                  name: 'vinod kumar',
                  status: 'Pending',
                  time: 'Today At 7.30 AM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Dashbigcard1subcard(
                  title: 'Plumbing work',
                  name: 'john Doe ',
                  status: 'Pending',
                  time: 'Today At 2.30 PM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Dashbigcard1subcard(
                  title: 'Carpentry',
                  name: 'biju menon ',
                  status: 'Pending',
                  time: 'Today At 9.30 PM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Dashbigcard1subcard(
                  title: 'Electrical work',
                  name: 'vinod kumar',
                  status: 'Pending',
                  time: 'Today At 7.30 AM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                ),
                const Dashbigcard1subcard(
                  title: 'Plumbing work',
                  name: 'john Doe ',
                  status: 'Pending',
                  time: 'Today At 2.30 PM',
                  statuscolor: Color(0xFFFEF9C3),
                ),
                const Divider(
                  thickness: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
