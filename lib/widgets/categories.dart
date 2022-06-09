import 'package:doctors_booking_app/UI/Search.dart';
import 'package:doctors_booking_app/UI/book_appointment.dart';
import 'package:flutter/material.dart';

Widget categories(
    BuildContext context,
    Color back_color,
    String title,
    Color title_color,
    String subtitle,
    Color sub_title_color,
    String btn_text,
    Color btn_color,
    String image_path) {
  Size size = MediaQuery.of(context).size;
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Container(
      // height: 160,
      width: size.width * 0.9,
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: back_color,
        borderRadius: BorderRadius.circular(20.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 3,
        //     offset: const Offset(0, 3), // changes position of shadow
        //   ),
        // ],
        // image: const DecorationImage(
        //     image: AssetImage("assets/doctor.png"),
        //     alignment: Alignment.centerRight),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: '$title \n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: title_color),
                  children: <TextSpan>[
                    TextSpan(
                        text: '$subtitle',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: sub_title_color,
                            fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * 0.35,
                height: 45,
                child: ElevatedButton(
                  child: Text(
                    "$btn_text",
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
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: btn_color,
                      textStyle: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          Spacer(),
          Image.asset(
            "$image_path",
            height: 170,
            width: 170,
          )
        ],
      ),
    ),
  );
}
