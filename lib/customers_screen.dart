import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/dummy_customer_list.dart';

class Customersscreen extends StatelessWidget {
  final List<DummyCustomerList> _customerList = List.from(customerDetails);

  Customersscreen({super.key});

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
                  "Customers List",
                  style: GoogleFonts.roboto(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            spreadRadius: 1,
                            blurRadius: 7)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  width: double.infinity,
                  child: Expanded(
                    child: DataTable2(
                      headingRowHeight: 40,
                      dataRowHeight: 70,
                      dividerThickness: 0.5,
                      headingRowColor: WidgetStateColor.resolveWith(
                          (states) => const Color(0xffF9FAFB)),
                      columnSpacing: 170,
                      columns: [
                        DataColumn2(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'UID')),
                        DataColumn2(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'CUSTOMER NAME')),
                        DataColumn2(
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'DATE OF JOINED')),
                        DataColumn2(
                            numeric: true,
                            size: ColumnSize.S,
                            label: Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: const Color(
                                      0xff6B7280,
                                    )),
                                'PROFILE')),
                      ],
                      rows: _createRow(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<DataRow2> _createRow() {
    return _customerList.map((e) {
      return DataRow2(cells: [
        DataCell(Text(e.uid.toString())),
        DataCell(Text(e.customerName)),
        DataCell(Text(e.dateOfJoin)),
        DataCell(CircleAvatar(
          backgroundImage: NetworkImage(e.profileurl),
        )),
      ]);
    }).toList();
  }
}
