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
                Text(
                  "Services",
                  style: GoogleFonts.roboto(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
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
                Text(
                  "Workers",
                  style: GoogleFonts.roboto(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
