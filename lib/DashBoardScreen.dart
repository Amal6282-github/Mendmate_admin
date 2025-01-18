import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/DashBigCard1.dart';
import 'package:mendmate_homepage/DashSmallCard.dart';
import 'package:mendmate_homepage/DashBigCard2.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3F4F6),
      child: Expanded(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard Overview",
                style: GoogleFonts.roboto(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Dashsmallcard(
                              title: 'Total Revenue',
                              icon: Icons.currency_rupee_rounded,
                              currency: Icons.currency_rupee,
                              values: "12,426",
                              color: Color(0xFF22C55E),
                            ),
                            Dashsmallcard(
                              title: 'Total Customers',
                              icon: Icons.groups,
                              values: '248',
                              color: Color(0xFF3B82F6),
                            ),
                            Dashsmallcard(
                              title: 'Pending Bookings',
                              icon: Icons.calendar_today,
                              values: '18',
                              color: Color(0xFFEAB308),
                            ),
                            Dashsmallcard(
                              title: 'Completed jobs',
                              icon: Icons.task_alt,
                              values: '156',
                              color: Color(0xFFA855F7),
                            ),
                            Dashsmallcard(
                              title: 'workers',
                              icon: Icons.engineering,
                              values: '156',
                              color: Color.fromARGB(255, 249, 64, 2),
                            ),
                            Dashsmallcard(
                              title: 'Services',
                              icon: Icons.settings,
                              values: '10',
                              color: Color.fromARGB(255, 2, 241, 249),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    child: const Icon(Icons.chevron_right),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Dashbigcard1(),
                      SizedBox(
                        width: 20,
                      ),
                      Dashbigcard2()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
