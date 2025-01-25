import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/WorkerCard.dart';

class Workersscreen extends StatelessWidget {
  const Workersscreen({
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
                'Workers List',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Container(
                          width: 300,
                          height: 40,
                          color: const Color(0xFFF3F4F6),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Search Workers',
                                hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                'NAME')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'CATEGORIES')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'DATE OF JOINED')),
                        DataColumn(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'ACTION')),
                      ],
                      rows: const [],
                    ),
                  ),
                  const SizedBox(
                    height: 320,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Workercard(
                            Date_Of_joined: '3/05/2025, 2.30PM',
                            Categories: 'Plumbing',
                            Name: 'John Doe',
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
