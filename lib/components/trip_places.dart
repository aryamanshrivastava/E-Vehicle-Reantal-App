
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripPlaces extends StatelessWidget {
  const TripPlaces({
    super.key,
    required this.icon,
    required this.label,
    required this.text,
  });

  final IconData icon;
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
            radius: h * 0.03,
            backgroundColor: Color(0xff2926D3),
            child: Icon(icon, color: Colors.white54, size: h * 0.03)),
        SizedBox(
          width: w * 0.05,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: GoogleFonts.poppins(
                    color: Color(0xffB1AFFF), fontSize: h * 0.015)),
            Text(text,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: h * 0.025,
                )),
          ],
        )
      ],
    );
  }
}


