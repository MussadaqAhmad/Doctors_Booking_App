import 'package:doctors_booking_app/UI/book_appointment.dart';
import 'package:flutter/material.dart';

void onpressed(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  showModalBottomSheet(
      // backgroundColor: Colors.grey[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            20.0,
          ),
          topRight: Radius.circular(
            20.0,
          ),
        ),
      ),
      context: context,
      builder: (context) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              width: size.width,
              child: Column(
                children: [
                  Center(
                    child: Text("Pick the appointemnt location",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text("Please select one",
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 2,
                        child: SizedBox(
                          height: 110,
                          width: size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ListTile(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Book(),
                                    ));
                              }),
                              title: Text(
                                "Hameed Latif Hospital",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 13,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "New Garden Town",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.circle,
                                        size: 13,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "Avaiable Thu, Jun 09",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 13),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              trailing: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Rs. 3000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 13,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        );
      });
}
