// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/data.dart';
import '../components/trip_showdown.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSoloTripSelected = true;
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: h * 0.025,
                        backgroundColor: Color(0xffE9E8EF),
                        child: Icon(Icons.menu)),
                    Spacer(),
                    CircleAvatar(
                      radius: h * 0.025,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Rent a bike',
                      style: TextStyle(
                          color: Color(0xff332FF6),
                          fontWeight: FontWeight.bold,
                          fontSize: h * 0.045),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text('anywhere',
                        style: TextStyle(
                            color: Colors.black, fontSize: h * 0.045)),
                  ],
                ),
                Text('anytime',
                    style: TextStyle(color: Colors.black, fontSize: h * 0.045)),
                SizedBox(
                  height: h * 0.05,
                ),
                Text('Select Vehicle',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: h * 0.015,
                    )),
                SizedBox(
                  height: h * 0.01,
                ),
                SizedBox(
                  height: h * 0.04,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: search.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      bool isSelected = index == selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: isSelected
                                  ? Color(0xff332FF6)
                                  : Color(0xffE9E8EF)),
                          child: Center(
                            child: Text(
                              search[index].name,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isSoloTripSelected = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            isSoloTripSelected ? Color(0xff332FF6) : null,
                        foregroundColor: isSoloTripSelected
                            ? Colors.white
                            : Color(0xff909090),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(h * 0.05),
                            topRight: Radius.circular(h * 0.05),
                          ),
                        ),
                        minimumSize: Size(w * 0.45, h * 0.07),
                      ),
                      child: Text(
                        'Solo Trip',
                        style: GoogleFonts.poppins(
                            fontSize: h * 0.02, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isSoloTripSelected = false;
                        });
                      },
                      style: ElevatedButton.styleFrom( 
                        elevation: 0,
                        backgroundColor:
                            !isSoloTripSelected ? Color(0xff332FF6) : null,
                        foregroundColor: !isSoloTripSelected 
                            ? Colors.white
                            : Color(0xff909090),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(h * 0.05),
                            topRight: Radius.circular(h * 0.05),
                          ),
                        ),
                        minimumSize: Size(w * 0.45, h * 0.07),
                      ),
                      child: Text(
                        'Group Trip',
                        style: GoogleFonts.poppins(
                            fontSize: h * 0.02, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: h * 0.45,
                  decoration: BoxDecoration(
                    color: Color(0xff332FF6),
                    borderRadius: isSoloTripSelected
                        ? BorderRadius.only(
                            bottomLeft: Radius.circular(h * 0.05),
                            topRight: Radius.circular(h * 0.05),
                            bottomRight: Radius.circular(h * 0.05))
                        : BorderRadius.only(
                            bottomLeft: Radius.circular(h * 0.05),
                            topLeft: Radius.circular(h * 0.05),
                            bottomRight: Radius.circular(h * 0.05)),
                  ),
                  child: Column(
                    children: [
                      if (isSoloTripSelected) TripShowDown(),
                      if (!isSoloTripSelected) TripShowDown()
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
