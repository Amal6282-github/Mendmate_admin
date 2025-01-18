import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customerdatarowcard extends StatelessWidget {
  final String UID;
  final String Customername;
  final String Date_of_joined;
  final ImageProvider Profile;
  const Customerdatarowcard(
      {super.key,
      required this.UID,
      required this.Customername,
      required this.Date_of_joined,
      required this.Profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 70,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            UID),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400, fontSize: 16),
                            Customername),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      SizedBox(width: 200, child: Text(Date_of_joined)),
                      const SizedBox(
                        width: 150,
                      ),
                      SizedBox(
                        width: 200,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: Profile,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              height: 10,
              color: Colors.white,
            )
          ],
        ),
        const Divider(
          thickness: 30,
          color: Color(0xffF9FAFB),
        )
      ],
    );
  }
}
