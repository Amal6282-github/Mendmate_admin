import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/dummy_worker_details.dart';
import 'package:mendmate_homepage/theme/app_theme.dart';

class Workersscreen extends StatelessWidget {
  final List<DummyWorkerDetails> _workerDetails = List.from(workerDetails);

  Workersscreen({super.key});

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
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 7),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              color: const Color(0xFFF3F4F6),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  prefixIcon: const Icon(Icons.search),
                                  hintText: 'Search Workers',
                                  hintStyle: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Material(
                              color: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.filter_alt_outlined,
                                        color: Colors.white),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Filter',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: DataTable2(
                        columnSpacing: 90,
                        horizontalMargin: 20,
                        minWidth: 800,
                        dividerThickness: 1,
                        headingRowHeight: 40,
                        dataRowHeight: 70,
                        headingRowColor: WidgetStateColor.resolveWith(
                            (states) => const Color(0xffF9FAFB)),
                        columns: [
                          DataColumn2(
                            label: Text(
                              'NAME',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff6B7280)),
                            ),
                          ),
                          DataColumn2(
                            label: Text(
                              'CATEGORIES',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff6B7280)),
                            ),
                          ),
                          DataColumn2(
                            label: Text(
                              'DATE OF JOINED',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff6B7280)),
                            ),
                          ),
                          DataColumn2(
                            label: Text(
                              'Status',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff6B7280)),
                            ),
                          ),
                          DataColumn2(
                            numeric: true,
                            size: ColumnSize.S,
                            label: Text(
                              'ACTION',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff6B7280)),
                            ),
                          ),
                        ],
                        rows: _createWorkerRows(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<DataRow2> _createWorkerRows() {
    return _workerDetails.map((e) {
      return DataRow2(
        cells: [
          DataCell(Text(e.name)),
          DataCell(Text(e.category)),
          DataCell(Text(e.dateOfJoined)),
          DataCell(Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: _getStatusColor(e.status),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(e.status),
              ))),
          DataCell(TextButton(
            onPressed: () {},
            child:
                Text(e.view, style: const TextStyle(color: Colors.blueAccent)),
          )),
        ],
      );
    }).toList();
  }
}

Color _getStatusColor(String status) {
  switch (status) {
    case "Decline":
      return Colors.redAccent;

    case "Blocked":
      return Colors.red;

    case "Pending":
      return accentColor;
    case "Approved":
      return Colors.lightGreen;
    default:
      return Colors.grey;
  }
}
