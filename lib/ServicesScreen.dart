import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_homepage/ServiceCard.dart';

class Servicesscreen extends StatelessWidget {
  const Servicesscreen({super.key});

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
                Row(
                  children: [
                    Text(
                      "Services",
                      style: GoogleFonts.roboto(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff111827),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(7)),
                      width: 140,
                      height: 40,
                      child: Center(
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext) {
                                        return Dialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            backgroundColor: Colors.white,
                                            child: Container(
                                              width: 500,
                                              height: 320,
                                              decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.1),
                                                        spreadRadius: 1,
                                                        blurRadius: 7)
                                                  ],
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .circular(10)),
                                              child: Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      "Enter the Card Details"),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 50,
                                                        vertical: 20),
                                                    child: Container(
                                                        child: Column(
                                                      children: [
                                                        TextField(
                                                          decoration: InputDecoration(
                                                              hintText:
                                                                  'Service name',
                                                              hintStyle:
                                                                  GoogleFonts
                                                                      .roboto()),
                                                        ),
                                                        TextField(
                                                          decoration:
                                                              InputDecoration(
                                                                  hintText:
                                                                      "img url",
                                                                  hintStyle:
                                                                      GoogleFonts
                                                                          .roboto()),
                                                        ),
                                                        TextField(
                                                          decoration: InputDecoration(
                                                              hintText:
                                                                  "icon name",
                                                              hintStyle:
                                                                  GoogleFonts
                                                                      .roboto()),
                                                        ),
                                                        TextField(
                                                          decoration: InputDecoration(
                                                              hintText:
                                                                  "icon baground color",
                                                              hintStyle:
                                                                  GoogleFonts
                                                                      .roboto()),
                                                        ),
                                                        Row(
                                                          children: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      context),
                                                              child: Text(
                                                                  style: GoogleFonts
                                                                      .roboto(
                                                                          color:
                                                                              Colors.black),
                                                                  "Cancel"),
                                                            ),
                                                            ElevatedButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      context),
                                                              child: Text(
                                                                  style: GoogleFonts
                                                                      .roboto(
                                                                          color:
                                                                              Colors.black),
                                                                  "Submit"),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    )),
                                                  )
                                                ],
                                              ),
                                            ));

                                        // Semi-transparent overlay
                                      });
                                },
                                child: Row(
                                  children: [
                                    const Icon(
                                        color: Colors.white, Icons.add_circle),
                                    Text(
                                        style: GoogleFonts.hindSiliguri(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                        'Add Services'),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Servicecard(
                              title: 'Plumbing',
                              icon: Icons.plumbing,
                              color: Color(0xffFFC527),
                              img: NetworkImage(
                                  'https://i.postimg.cc/HWJVsjfR/3-250x250.webp'),
                            ),
                            Servicecard(
                              title: 'Electrical Work',
                              icon: Icons.electrical_services,
                              color: Color(0xFF22C55E),
                              img: NetworkImage(
                                  'https://i.postimg.cc/bNb04HV2/Ravinia-Electric-png.webp'),
                            ),
                            Servicecard(
                              title: 'Cieling Work',
                              icon: Icons.roofing,
                              color: Color(0xFF3B82F6),
                              img: NetworkImage(
                                  'https://i.postimg.cc/v8CLPShs/pop-false-ceiling-work.jpg'),
                            ),
                            Servicecard(
                              title: 'Carpentry work',
                              icon: Icons.carpenter,
                              color: Color(0xFFA855F7),
                              img: NetworkImage(
                                  'https://i.postimg.cc/8cd5m5ws/laminaat-leggen-3.jpg'),
                            ),
                            Servicecard(
                              title: 'CCTV Fixing',
                              icon: Icons.security,
                              color: Color.fromARGB(255, 249, 64, 2),
                              img: NetworkImage(
                                  'https://i.postimg.cc/RVH7HQcZ/Depositphotos-282950500-S.jpg'),
                            ),
                            Servicecard(
                              title: 'Pressure wash cleaning',
                              icon: Icons.cleaning_services,
                              color: Color.fromARGB(255, 2, 241, 249),
                              img: NetworkImage(
                                  'https://i.postimg.cc/LhdXzPjc/images.jpg'),
                            ),
                            Servicecard(
                              title: 'Painting Service',
                              icon: Icons.palette,
                              color: Color(0xFFA855F7),
                              img: NetworkImage(
                                  'https://i.postimg.cc/9fF1Zwmg/Contractor-Recommendation-1536x1024-jpg.webp'),
                            )
                          ],
                        ),
                        Icon(Icons.chevron_left)
                      ],
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
}
