import 'package:doctors_booking_app/UI/Search_doctors.dart';
import 'package:flutter/material.dart';

Widget listTile(
  BuildContext context,
  String url,
  String Title,
) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Search_doctors()),
      );
    },
    child: Column(
      children: [
        ListTile(
          leading: Image.asset(
            url,
            height: 40,
            width: 40,
          ),
          tileColor: Colors.white,
          title: Text(
            Title,
            style: TextStyle(fontSize: 15),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 14)
      ],
    ),
  );
}
