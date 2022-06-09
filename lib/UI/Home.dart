import 'package:doctors_booking_app/Model/CategoryModel.dart';
import 'package:doctors_booking_app/Model/HospitalsModel.dart';
import 'package:doctors_booking_app/UI/Search.dart';
import 'package:doctors_booking_app/UI/Search_doctors.dart';
import 'package:doctors_booking_app/UI/User_Profile.dart';
import 'package:doctors_booking_app/UI/location.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/categories.dart';
import 'package:doctors_booking_app/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: clr4,
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserProfile(),
                ));
          },
          child: Center(
            child: Text(
              " SignUp",
              style: TextStyle(fontSize: 15, color: primary),
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/logo.jpg",
          height: 80,
          width: 80,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Location()),
              );
            },
            child: Center(
              child: Text(
                "Lahore",
                style: TextStyle(color: primary, fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: primary,
              size: 14,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            searchBar(context, "Search For", clr2, "Doctors", clr2,
                "Find Doctors, Specialities, Disease...", true, false),
            // Container(
            //   height: 160,
            //   width: size.width * 0.9,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20), color: Colors.white),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Text(
            //         "Search For Doctors",
            //         style: TextStyle(color: clr2, fontSize: 18),
            //       ),
            //       SizedBox(
            //         height: 5,
            //       ),
            //       TextFormField(
            //         decoration: InputDecoration(
            //           prefixIcon: Icon(
            //             Icons.search_rounded,
            //             color: clr2,
            //           ),
            //           enabledBorder: OutlineInputBorder(
            //             borderSide: BorderSide(color: Colors.grey),
            //             borderRadius: BorderRadius.all(Radius.circular(10)),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderSide: BorderSide(color: clr2),
            //             borderRadius: BorderRadius.all(Radius.circular(10)),
            //           ),
            //           contentPadding: EdgeInsets.symmetric(
            //             horizontal: 42,
            //             vertical: 12,
            //           ),
            //           hintText: "Find Doctors, Specialities, Disease...",
            //           hintStyle: TextStyle(fontSize: 14, color: clr2),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 5,
            //       )
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            categories(context, clr1, "ONLINE", clr2, "CONSULTATION", secondary,
                "Search Now", secondary, "assets/Doctor1.png"),
            const SizedBox(
              height: 20,
            ),
            categories(context, clr, "DOCTOR", clr2, "APPOINTMENT", primary,
                "Search Now", primary, "assets/Doctor2.png"),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 190,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "I'm looking for",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 120,
                      width: size.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
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
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage(CategoryList[index].image),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    CategoryList[index].title,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        // margin: const EdgeInsets.symmetric(vertical: 8),
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30)),
                        width: size.width * 0.8,
                        height: 50,
                        child: ElevatedButton(
                          child: const Text(
                            "All specializations",
                            // style: TextStyle(color: textColor),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Search(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: secondary,
                              // padding: const EdgeInsets.symmetric(
                              //     horizontal: 30, vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 170,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.checkmark_shield_fill,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Have Corporate Insurance?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      " Free Unlimited Video Consultations",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: size.width * 0.8,
                        height: 50,
                        child: ElevatedButton(
                          child: const Text(
                            "Connect Now",
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: primary,
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 200,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Popular Hospitals",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 145,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: HospitalList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  width: size.width * 0.6,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          HospitalList[index].image,
                                        ),
                                        alignment: Alignment.centerRight),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.6,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: clr4,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  child: Center(
                                      child: Text(HospitalList[index].title)),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
