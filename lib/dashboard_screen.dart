import 'package:flutter/material.dart';
import 'package:mendmate_homepage/dash_small_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3F4F6),
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                spacing: 20,
                runSpacing: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}
