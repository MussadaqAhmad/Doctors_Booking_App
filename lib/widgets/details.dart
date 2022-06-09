import 'package:flutter/material.dart';

Widget details(
  BuildContext context,
  String heading,
  String list,
) {
  Size size = MediaQuery.of(context).size;
  return Center(
    child: Container(
      // height: 300,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "•",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  TextSpan(text: "  "),
                  TextSpan(
                      text: list,
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
