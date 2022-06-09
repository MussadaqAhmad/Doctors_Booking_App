import 'package:doctors_booking_app/Model/DoctorModel.dart';
import 'package:doctors_booking_app/UI/book_appointment.dart';
import 'package:doctors_booking_app/UI/confirm_booking.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Appointments extends StatelessWidget {
  const Appointments({Key? key}) : super(key: key);

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
        centerTitle: true,
        title: Text(
          "Upcoming Appointments",
          style: TextStyle(color: primary, fontSize: 18),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: DoctorList.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    // height: 300,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        AssetImage(DoctorList[index].image)),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: clr4,
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        text: '04 \n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: clr2),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'JUN',
                                              style: TextStyle(
                                                  // fontWeight: FontWeight.bold,
                                                  color: clr2,
                                                  fontSize: 14)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      DoctorList[index].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Saturday, 10:00 am",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                        Text(
                                          "Mid City Hospital",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                        Text(
                                          "Patient Name: Mussadaq Ahmad Jamil",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                        Text(
                                          "Fee: 2000",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    color: clr2,
                                    thickness: 0.5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: size.width * 0.8,
                                      height: 50,
                                      child: ElevatedButton(
                                        child: Text(
                                          "View Details",
                                          // style: TextStyle(color: textColor),
                                        ),
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) => Book(),
                                          //     ));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0)),
                                            primary: secondary,
                                            onPrimary: Colors.white,
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            )),
                                      ),
                                    ),
                                  )
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceAround,
                                  //   children: [
                                  //     ElevatedButton(
                                  //         onPressed: () {},
                                  //         child: Text(
                                  //           "Pay Now",
                                  //         ),
                                  //         style: ElevatedButton.styleFrom(
                                  //             minimumSize: Size(40, 50),
                                  //             shape: RoundedRectangleBorder(
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(
                                  //                         10.0)),
                                  //             primary: secondary,
                                  //             onPrimary: Colors.white,
                                  //             textStyle: TextStyle(
                                  //                 fontSize: 13,
                                  //                 fontWeight:
                                  //                     FontWeight.bold))),
                                  //     ElevatedButton(
                                  //       onPressed: () {},
                                  //       child: Text(
                                  //         "More Options",
                                  //       ),
                                  //       style: ElevatedButton.styleFrom(
                                  //           minimumSize: Size(40, 50),
                                  //           primary: Colors.white,
                                  //           onPrimary: primary,
                                  //           textStyle: TextStyle(
                                  //               fontSize: 13,
                                  //               fontWeight: FontWeight.bold),
                                  //           shape: RoundedRectangleBorder(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(
                                  //                       10.0)),
                                  //           side: BorderSide(
                                  //             width: 1.0,
                                  //             color: primary,
                                  //           )),
                                  //     ),
                                  //   ],
                                  // ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
