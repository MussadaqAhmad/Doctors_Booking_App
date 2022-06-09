import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doctors_booking_app/UI/Doctor_profile.dart';
import 'package:doctors_booking_app/UI/Home.dart';
import 'package:doctors_booking_app/UI/Profile.dart';
import 'package:doctors_booking_app/UI/Search.dart';
import 'package:doctors_booking_app/UI/appointents.dart';
import 'package:doctors_booking_app/UI/location.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/categories.dart';
import 'package:doctors_booking_app/widgets/search_bar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final screens = [Home(), Appointments(), MyProfile()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Uri lanuchUri = Uri(
            scheme: "tel",
            path: "042-37210620",
          );
          if (await canLaunchUrl(lanuchUri)) {
            await launchUrl(lanuchUri);
          } else {
            print("The action is not supported. (No Phone app) ");
          }
        },
        backgroundColor: secondary,
        child: const Icon(
          Icons.call,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // letIndexChange: ,
        index: _selectedIndex,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.transparent,

        items: <Widget>[
          Icon(
            Icons.home_filled,
            size: 25,
            color: primary,
          ),
          Icon(
            Icons.calendar_today_outlined,
            size: 25,
            color: primary,
          ),
          Icon(
            Icons.person_outline_outlined,
            size: 25,
            color: primary,
          )
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      //  BottomNavigationBar(
      //     selectedItemColor: primary,
      //     type: BottomNavigationBarType.fixed,
      //     currentIndex: _selectedIndex,
      //     onTap: (value) {
      //       setState(() {
      //         _selectedIndex = value;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home_filled,
      //             // color: primary,
      //           ),
      //           label: "Home"),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.calendar_today_outlined,
      //             // color: primary,
      //           ),
      //           label: "Appoinments"),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.create_new_folder_outlined,
      //           // color: primary,
      //         ),
      //         label: "Medical Records",
      //       ),
      //       // BottomNavigationBarItem(
      //       //   icon: CircleAvatar(
      //       //     radius: 14,
      //       //     backgroundImage: AssetImage("assets/images/user_2.png"),
      //       //   ),
      //       //   label: "Profile",
      //       // ),
      //     ]),
    );
  }
}




// Widget card(BuildContext context, String text, String text1, Color color,
//     Color color1, String text2) {
//   Size size = MediaQuery.of(context).size;
//   return Center(
//     child: Container(
//       height: size.height * 0.4,
//       width: size.width * 0.8,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 10,
//           ),
//           Center(
//             child: Text(
//               "$text",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Center(
//             child: Text(
//               "$text1",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Image.asset(
//             "assets/doctor.png",
//             height: 190,
//             width: 190,
//             alignment: Alignment.center,
//           ),
//           Container(
//               width: size.width * 0.4,
//               height: 40,
//               child: ElevatedButton(
//                 child: Text(
//                   "$text2",
//                   // style: TextStyle(color: textColor),
//                 ),
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15)),
//                     primary: color1,
//                     elevation: 6,
//                     // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                     textStyle:
//                         TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
//               ))
//         ],
//       ),
//     ),
//   );
// }
