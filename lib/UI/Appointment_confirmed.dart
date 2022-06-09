import 'package:doctors_booking_app/UI/Home.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AppointmentDone extends StatelessWidget {
  const AppointmentDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: clr4,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  // height: 300,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Your in-person appointment",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              "has been Booked!",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image.asset(
                            "assets/Done.png",
                            height: size.height * 0.35,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Appointment Details",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text("Patient Name"),
                            subtitle: Text("Mussadaq Ahmad Jamil"),
                          ),
                          ListTile(
                            leading: Icon(Icons.calendar_month_outlined),
                            title: Text("Appointment Time"),
                            subtitle: Text("04 Jun 2022, 10:00 AM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.local_hospital_outlined),
                            title: Text("Doctor Name"),
                            subtitle:
                                Text("Dr. Ambar Raiz at Mid City Hospital"),
                          ),
                          ListTile(
                            leading:
                                Icon(Icons.playlist_add_check_circle_outlined),
                            title: Text("Appointment Fee"),
                            subtitle: Text("Rs. 2000 (To be paid at clinic)"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: size.width * 0.9,
                            height: 50,
                            child: ElevatedButton(
                              child: Text(
                                "Done",
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Home(),
                                    ));
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
              ),
            ]),
      ),
    );
  }
}
