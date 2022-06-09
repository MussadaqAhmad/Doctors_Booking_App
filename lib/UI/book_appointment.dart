import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:doctors_booking_app/UI/confirm_booking.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_range/time_range.dart';

class Book extends StatefulWidget {
  Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
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
        title: Text("Select a Time Slot",
            style: TextStyle(color: primary, fontSize: 17)),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              // height: 200,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/hospitals/Doc (2).png"),
                          radius: 40,
                        ),
                        title: Text(
                          "Prof. Col. Dr. Nazli Hameed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text("Hameed Latif Hospital (New Garden Town)",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black)),
                            SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                              onTap: () => onpressed(context),
                              child: Text("Change",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Fee: ",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black)),
                                TextSpan(
                                    text: "Rs. 3000",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ]),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    CalendarTimeline(
                      initialDate: DateTime(2020, 4, 20),
                      firstDate: DateTime(2019, 1, 15),
                      lastDate: DateTime(2020, 11, 20),
                      onDateSelected: (date) => print(date),
                      leftMargin: 20,
                      monthColor: secondary,
                      dayColor: clr2,
                      activeDayColor: Colors.white,
                      dotsColor: secondary,
                      activeBackgroundDayColor: secondary,
                      selectableDayPredicate: (date) => date.day != 23,
                      locale: 'en_ISO',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TimeRange(
                      fromTitle: Text(
                        'From',
                        style: TextStyle(fontSize: 18, color: secondary),
                      ),
                      toTitle: Text(
                        'To',
                        style: TextStyle(fontSize: 18, color: secondary),
                      ),
                      titlePadding: 20,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.normal, color: clr2),
                      activeTextStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      borderColor: secondary,
                      activeBorderColor: secondary,
                      backgroundColor: Colors.transparent,
                      activeBackgroundColor: secondary,
                      firstTime: TimeOfDay(hour: 14, minute: 30),
                      lastTime: TimeOfDay(hour: 20, minute: 00),
                      timeStep: 10,
                      timeBlock: 30,
                      onRangeCompleted: (range) => setState(() => print(range)),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SizedBox(
            height: 120,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), color: clr4),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: clr2,
                        ),
                        Text("Jun 02, 11:30 AM",
                            style: TextStyle(
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.9,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      "Confirm Booking",
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmBooking()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: secondary,
                        onPrimary: Colors.white,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
