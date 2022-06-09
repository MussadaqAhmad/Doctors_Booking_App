import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

Widget options(IconData? icon, String text) {
  return Row(
    children: <Widget>[
      Container(
        height: 70,
        width: 70,
        // color: Colors.purple[200],
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            color: Color.fromRGBO(215, 212, 255, 1)),
        child: Center(
          child: Icon(
            icon,
            color: primary,
            size: 30,
          ),
        ),
      ),
      Container(
        height: 70,
        width: 120,
        // color: Color.fromRGBO(244, 243, 243, 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15), topRight: Radius.circular(15)),
          color: clr4,
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: primary, fontWeight: FontWeight.bold),
        )),
      ),
      SizedBox(
        width: 10,
      )
    ],
  );
}
