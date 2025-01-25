import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/CustomerDataRowCard.dart';

class Customersscreen extends StatelessWidget {
  const Customersscreen({super.key});

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
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 7)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  width: double.infinity,
                  child: Column(
                    children: [
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
                                    'UID')),
                            DataColumn(
                                label: Text(
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        color: const Color(
                                          0xff6B7280,
                                        )),
                                    'CUSTOMER NAME')),
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
                                    'PROFILE')),
                          ],
                          rows: const [],
                        ),
                      ),
                      const SizedBox(
                        height: 530,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                              Customerdatarowcard(
                                  UID: '100',
                                  Customername: 'john doa',
                                  Date_of_joined: '02.05.2025',
                                  Profile: NetworkImage(
                                      'https://i.postimg.cc/YS4thqWt/no-profile-picture-15257.png')),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
