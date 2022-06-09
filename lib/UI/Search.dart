import 'package:doctors_booking_app/Model/CategoryModel.dart';
import 'package:doctors_booking_app/UI/Search_doctors.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/listTile.dart';
import 'package:doctors_booking_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
          "Find a Doctor",
          style: TextStyle(fontSize: 20, color: primary),
        ),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          searchBar(context, "", clr, "", clr, "Search For Locality or city...",
              false, true),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recent searches",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Clear all",
                      style: const TextStyle(
                          fontSize: 12, decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/Icons/orthopedic.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Orthopedic Surgeon",
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Search by specialty",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                // Row(
                //   children: <Widget>[
                //     Expanded(
                //         flex: 2,
                //         child: Column(
                //           children: <Widget>[
                //             listTile(context, "assets/skin.png", "Skin"),
                //             listTile(context, "assets/skin.png", "Urologist"),
                //             listTile(context, "assets/skin.png",
                //                 "Orthopedic Surgeon"),
                //             listTile(
                //                 context, "assets/skin.png", "ENT Specialist"),
                //             listTile(
                //                 context, "assets/skin.png", "Eye Specialist"),
                //             listTile(context, "assets/skin.png", "Dentist"),
                //             listTile(context, "assets/skin.png",
                //                 "Heart Specialist"),
                //             listTile(context, "assets/skin.png",
                //                 "General Physcian"),
                //             listTile(context, "assets/skin.png",
                //                 "General Surgeon"),
                //             listTile(context, "assets/skin.png", "Kidney"),
                //           ],
                //         )),
                //     SizedBox(
                //       width: 14,
                //     ),
                //     Expanded(
                //         flex: 2,
                //         child: Column(
                //           children: <Widget>[
                //             listTile(
                //                 context, "assets/skin.png", "Gynecologist"),
                //             listTile(context, "assets/skin.png",
                //                 "Child Specialist"),
                //             listTile(context, "assets/skin.png",
                //                 "Consultant Physician"),
                //             listTile(
                //                 context, "assets/skin.png", "Neurologist"),
                //             listTile(
                //                 context, "assets/skin.png", "Psyciatist"),
                //             listTile(context, "assets/skin.png",
                //                 "Gastroenterologist"),
                //             listTile(
                //                 context, "assets/skin.png", "Pulmonologist"),
                //             listTile(context, "assets/skin.png",
                //                 "Diabetes Specialist"),
                //             listTile(context, "assets/skin.png",
                //                 "Endrocrinologist"),
                //             listTile(context, "assets/skin.png",
                //                 "Pain Management"),
                //           ],
                //         ))
                //   ],
                // )
                SizedBox(
                  height: 320,
                  width: size.width,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2.2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15),
                      itemCount: CategoryList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search_doctors()),
                            );
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            leading: Image.asset(
                              CategoryList[index].image,
                              height: 40,
                              width: 40,
                            ),
                            tileColor: Colors.white,
                            title: Text(
                              CategoryList[index].title,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
