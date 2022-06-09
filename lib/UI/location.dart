import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: clr4,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Search Location",
          style: TextStyle(fontSize: 20, color: primary),
        ),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          searchBar(context, "", clr, "", clr,
              "Find Doctors, Specialities, Disease...", false, true),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Use current location",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.location_searching_sharp,
                        size: 15,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                      height: 450,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const Text(
                              "Top Cities",
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text("Lahore"),
                            Divider(
                              thickness: 1,
                              color: secondary,
                            ),
                            Text("Karachi"),
                            Divider(
                              thickness: 1,
                              color: primary,
                            ),
                            Text("Islamabad"),
                            Divider(
                              thickness: 1,
                              color: secondary,
                            ),
                            Text("Rawalpindi"),
                            Divider(
                              thickness: 1,
                              color: primary,
                            ),
                            Text("Multan"),
                            Divider(
                              thickness: 1,
                              color: secondary,
                            ),
                            Text("Faisalabad"),
                            Divider(
                              thickness: 1,
                              color: primary,
                            ),
                            Text("Peshawar"),
                            Divider(
                              thickness: 1,
                              color: secondary,
                            ),
                            Text("Gujranwala"),
                            Divider(
                              thickness: 1,
                              color: primary,
                            ),
                            Text("Bahawalpur"),
                            Divider(
                              thickness: 1,
                              color: secondary,
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 14,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
