import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/BookingScreenDataRow.dart';

class Bookingscreen extends StatelessWidget {
  const Bookingscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3F4F6),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Bookings',
                style: GoogleFonts.roboto(
                    fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 7)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(10)),
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                            height: 40,
                            color: const Color(0xFFF3F4F6),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: 'Search Bookings',
                                  hintStyle: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(7)),
                          width: 90,
                          height: 40,
                          child: Center(
                            child: Row(
                              children: [
                                const Icon(Icons.filter_alt_outlined),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                        style: GoogleFonts.hindSiliguri(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                        'Filter'))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: .5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: DataTable(
                      dividerThickness: 0.5,
                      headingRowColor: WidgetStateColor.resolveWith(
                          (states) => const Color(0xffF9FAFB)),
                      columnSpacing: 170,
                      columns: [
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'CUSTOMER')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'SERVICE')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'DATE')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'STATUS')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'PRICE')),
                      ],
                      rows: const [],
                    ),
                  ),
                  SizedBox(
                    height: 320,
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Bookingscreendatarow(
                            Date: '3/05/2025, 2.30PM',
                            Price: '1000',
                            Service: 'Plumbing',
                            Status: 'Pending',
                            customer: 'John Doe',
                            Statuscolor: Color(0xffFEF9C3),
                            statustextcolor: Color(0xff854D2B),
                          ),
                          Bookingscreendatarow(
                            Date: '17/05/2025, 7.30PM',
                            Price: '1500',
                            Service: 'Electrical work',
                            Status: 'Confirmed',
                            customer: 'Mareena Joseph',
                            Statuscolor: Color(0xffDBEAFE),
                            statustextcolor: Color(0xff1E40AF),
                          ),
                          Bookingscreendatarow(
                            Date: '9/02/2025, 10.00 AM',
                            Price: '25000',
                            Service: 'Cieling Work',
                            Status: 'Completed',
                            customer: 'Joseph Steephen',
                            Statuscolor: Color(0xffDCFCE7),
                            statustextcolor: Color(0xff166534),
                          ),
                          Bookingscreendatarow(
                            Date: '3/05/2025, 2.30PM',
                            Price: '1000',
                            Service: 'Plumbing',
                            Status: 'Pending',
                            customer: 'John Doe',
                            Statuscolor: Color(0xffFEF9C3),
                            statustextcolor: Color(0xff854D2B),
                          ),
                          Bookingscreendatarow(
                            Date: '17/05/2025, 7.30PM',
                            Price: '1500',
                            Service: 'Electrical work',
                            Status: 'Confirmed',
                            customer: 'Mareena Joseph',
                            Statuscolor: Color(0xffDBEAFE),
                            statustextcolor: Color(0xff1E40AF),
                          ),
                          Bookingscreendatarow(
                            Date: '9/02/2025, 10.00 AM',
                            Price: '25000',
                            Service: 'Cieling Work',
                            Status: 'Completed',
                            customer: 'Joseph Steephen',
                            Statuscolor: Color(0xffDCFCE7),
                            statustextcolor: Color(0xff166534),
                          ),
                          Bookingscreendatarow(
                            Date: '3/05/2025, 2.30PM',
                            Price: '1000',
                            Service: 'Plumbing',
                            Status: 'Pending',
                            customer: 'John Doe',
                            Statuscolor: Color(0xffFEF9C3),
                            statustextcolor: Color(0xff854D2B),
                          ),
                          Bookingscreendatarow(
                            Date: '17/05/2025, 7.30PM',
                            Price: '1500',
                            Service: 'Electrical work',
                            Status: 'Confirmed',
                            customer: 'Mareena Joseph',
                            Statuscolor: Color(0xffDBEAFE),
                            statustextcolor: Color(0xff1E40AF),
                          ),
                          Bookingscreendatarow(
                            Date: '9/02/2025, 10.00 AM',
                            Price: '25000',
                            Service: 'Cieling Work',
                            Status: 'Completed',
                            customer: 'Joseph Steephen',
                            Statuscolor: Color(0xffDCFCE7),
                            statustextcolor: Color(0xff166534),
                          ),
                          Bookingscreendatarow(
                            Date: '3/05/2025, 2.30PM',
                            Price: '1000',
                            Service: 'Plumbing',
                            Status: 'Pending',
                            customer: 'John Doe',
                            Statuscolor: Color(0xffFEF9C3),
                            statustextcolor: Color(0xff854D2B),
                          ),
                          Bookingscreendatarow(
                            Date: '17/05/2025, 7.30PM',
                            Price: '1500',
                            Service: 'Electrical work',
                            Status: 'Confirmed',
                            customer: 'Mareena Joseph',
                            Statuscolor: Color(0xffDBEAFE),
                            statustextcolor: Color(0xff1E40AF),
                          ),
                          Bookingscreendatarow(
                            Date: '9/02/2025, 10.00 AM',
                            Price: '25000',
                            Service: 'Cieling Work',
                            Status: 'Completed',
                            customer: 'Joseph Steephen',
                            Statuscolor: Color(0xffDCFCE7),
                            statustextcolor: Color(0xff166534),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
