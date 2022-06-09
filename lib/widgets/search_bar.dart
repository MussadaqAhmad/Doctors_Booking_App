import 'package:doctors_booking_app/UI/Search.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/listTile.dart';
import 'package:flutter/material.dart';

Widget searchBar(
    BuildContext context,
    String title,
    Color title_color,
    String subtitle,
    Color sub_title_color,
    String hintText,
    bool istextreq,
    bool ontap) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
    ),
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        istextreq == true
            ? RichText(
                text: TextSpan(
                  text: '$title \n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: title_color),
                  children: <TextSpan>[
                    TextSpan(
                        text: '$subtitle',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: sub_title_color,
                            fontSize: 30)),
                  ],
                ),
              )
            : SizedBox(),
        const SizedBox(height: 20),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: clr4,
                // const Color.fromRGBO(244, 243, 243, 1),
                borderRadius: BorderRadius.circular(15)),
            child: ontap == true
                ? TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: hintText,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  )
                : ListTile(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Search())));
                    }),
                    leading: Icon(
                      Icons.search,
                      color: Colors.black87,
                    ),
                    title: Text(
                      "Find Doctors, Specialities, Disease...",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  )),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}
