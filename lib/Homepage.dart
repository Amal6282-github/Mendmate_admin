import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/BookingScreen.dart';
import 'package:mendmate_homepage/CustomersScreen.dart';
import 'package:mendmate_homepage/DashBoardScreen.dart';
import 'package:mendmate_homepage/WorkersScreen.dart';
import 'package:mendmate_homepage/dashboardcard.dart';
import 'package:mendmate_homepage/ServicesScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
              width: 270,
              decoration: const BoxDecoration(color: Color(0xFF111827)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.flip(
                            flipX: true,
                            child: const Icon(
                              Icons.build,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text('Service Admin',
                              style: GoogleFonts.roboto(
                                  fontSize: 20, color: Colors.white))
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Dashboardcard(
                                title: 'Dashboard',
                                icon: Icons.dashboard,
                                ontap: () {
                                  tabController.animateTo(0);
                                },
                                color: tabController.index == 0
                                    ? const Color(0xff2563EB)
                                    : const Color(0xff111827),
                              ),
                              Dashboardcard(
                                color: tabController.index == 1
                                    ? const Color(0xff2563EB)
                                    : const Color(0xff111827),
                                title: 'Bookings',
                                icon: Icons.calendar_month,
                                ontap: () {
                                  tabController.animateTo(1);
                                },
                              ),
                              Dashboardcard(
                                color: tabController.index == 2
                                    ? const Color(0xff2563EB)
                                    : const Color(0xff111827),
                                title: 'Services',
                                icon: Icons.build,
                                ontap: () {
                                  tabController.animateTo(2);
                                },
                              ),
                              Dashboardcard(
                                color: tabController.index == 3
                                    ? const Color(0xff2563EB)
                                    : const Color(0xff111827),
                                title: 'Customers',
                                icon: Icons.group,
                                ontap: () {
                                  tabController.animateTo(3);
                                },
                              ),
                              Dashboardcard(
                                color: tabController.index == 4
                                    ? const Color(0xff2563EB)
                                    : const Color(0xff111827),
                                title: 'Workers',
                                icon: Icons.settings_sharp,
                                ontap: () {
                                  tabController.animateTo(4);
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Expanded(
              child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: const [
                DashboardScreen(),
                Bookingscreen(),
                Servicesscreen(),
                Customersscreen(),
                Workersscreen(),
              ]))
        ],
      ),
    );
  }
}
