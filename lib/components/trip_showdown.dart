// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'trip_places.dart';

class TripShowDown extends StatelessWidget {
  const TripShowDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w * 0.1, vertical: h * 0.03),
      child: Column(
        children: [
          TripPlaces(
              icon: Icons.location_on_outlined,
              label: 'Source Location',
              text: 'Chennai airport'),
          SizedBox(height: h * 0.02),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          SizedBox(height: h * 0.02),
          TripPlaces(
              icon: Icons.location_on_outlined,
              label: 'Destination Location',
              text: 'Chennai metro'),
          SizedBox(height: h * 0.02),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          SizedBox(height: h * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: h * 0.03,
                  backgroundColor: Color(0xff2926D3),
                  child:
                      Icon(Icons.add, color: Colors.white54, size: h * 0.03)),
              SizedBox(
                width: w * 0.05,
              ),
              Text(
                'Add members',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: h * 0.025,
                ),
              )
            ],
          ),
          SizedBox(height: h * 0.04),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(w * 0.8, h * 0.06),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(h * 0.03),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Search Bikes',
                style: TextStyle(color: Color(0xff332FF6), fontSize: h * 0.015),
              ))
        ],
      ),
    );
  }
}
