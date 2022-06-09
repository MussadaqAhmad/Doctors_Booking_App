import 'package:doctors_booking_app/UI/Appointment_confirmed.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/BottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmBooking extends StatefulWidget {
  ConfirmBooking({Key? key}) : super(key: key);

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  // SingingCharacter? _character = SingingCharacter.lafayette;
  // List _selectedIndexs = [];
  Color _colorContainer = Colors.white;
  bool isSelected = false;
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: clr4,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        centerTitle: true,
        title: Text("Confirm Booking",
            style: TextStyle(color: primary, fontSize: 17)),
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                // height: 220,
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
            SizedBox(height: 20),
            Center(
              child: Container(
                // height: 300,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Personal Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "We share this information with the doctor",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Patient's Name",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: secondary,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: secondary,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: secondary,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 42,
                            vertical: 12,
                          ),
                          labelText: "Name",
                          hintText: "Enter your Name.....",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey),
                          labelStyle: TextStyle(fontSize: 14, color: secondary),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.call,
                              color: secondary,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            labelText: "Phone Number",
                            hintText: "Enter your Phone Number.....",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 0,
                              groupValue: _groupValue,
                              title: Text("Male"),
                              onChanged: (newValue) => setState(
                                  () => _groupValue = newValue.hashCode),
                              activeColor: secondary,
                              selected: false,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 1,
                              groupValue: _groupValue,
                              title: Text("Female"),
                              onChanged: (newValue) => setState(
                                  () => _groupValue = newValue.hashCode),
                              activeColor: secondary,
                              selected: false,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 250,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Disease Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Tell us about your Problem?",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        maxLines: 6,
                        decoration: InputDecoration(
                            // prefixIcon: Icon(
                            //   Icons.call,
                            //   color: secondary,
                            // ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: secondary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.all(10),
                            labelText: "Type Here",
                            hintText: "Enter Your Disease Details.....",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 250,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Payment Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "How Will you pay for the appointment?",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _colorContainer = _colorContainer ==
                                    Color.fromRGBO(255, 151, 0, 0.1)
                                ? Colors.white
                                : Color.fromRGBO(255, 151, 0, 0.1);
                          });
                        },
                        child: Container(
                          height: 60,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: _colorContainer,
                              // isSelected
                              //     ? Color.fromRGBO(255, 245, 233, 0)
                              //     : Colors.white,
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(
                                Icons.check_circle_rounded,
                                size: 14,
                                color: secondary,
                              ),
                              Text(
                                "Online Payment",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs. 3000",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _colorContainer = _colorContainer ==
                                    Color.fromRGBO(255, 151, 0, 0.1)
                                ? Colors.white
                                : Color.fromRGBO(255, 151, 0, 0.1);
                          });
                        },
                        child: Container(
                          height: 60,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: _colorContainer,
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(
                                Icons.check_circle_rounded,
                                size: 14,
                                color: secondary,
                              ),
                              Text(
                                "Pay Cash at Clinic",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs. 3000",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
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
                            builder: (context) => AppointmentDone(),
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
    );
  }
}
