import 'package:doctors_booking_app/Model/DoctorModel.dart';
import 'package:doctors_booking_app/UI/Doctor_profile.dart';
import 'package:doctors_booking_app/UI/book_appointment.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:doctors_booking_app/widgets/listTile.dart';
import 'package:doctors_booking_app/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search_doctors extends StatefulWidget {
  Search_doctors({Key? key}) : super(key: key);

  @override
  State<Search_doctors> createState() => _Search_doctorsState();
}

class _Search_doctorsState extends State<Search_doctors> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: clr4,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        title: Text(
          "Category Name Location",
          style: TextStyle(fontSize: 17, color: primary),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.phone,
              color: primary,
              size: 20,
            ),
          ),
        ],
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: clr4, borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText:
                            "Doctors,  Hospitals, specialties, services.....",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      options(Icons.location_on_outlined, "Doctors Near me"),
                      options(Icons.badge_outlined, "Most Experienced"),
                      options(Icons.person_outline, "Female Doctors"),
                      options(
                          Icons.workspace_premium_outlined, "Platinum Docotrs"),
                      options(Icons.videocam_outlined, "Doctors Below Rs. 500"),
                      options(Icons.fact_check_outlined, "Lowest Fee"),
                      options(Icons.calendar_today_outlined, "Avialable Today"),
                      options(Icons.thumb_up_outlined, "Highest Rated"),
                      options(Icons.voice_chat_rounded, "Video Consultation"),
                      options(Icons.person_add_alt_outlined, "Male Doctors"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Top 571 Gyneocologists in Lahore",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            width: size.width,
            color: primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "oladoc Care - Book Doctors for \nRs. 500",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        "View all",
                        style: const TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DoctorList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ));
                        },
                        child: Container(
                          height: 210,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(DoctorList[index].image))),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_rounded,
                                    size: 10,
                                  ),
                                  Text("100%")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                DoctorList[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "5 Years Expeience",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Rs. 500",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: primary),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Rs. 100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Book(),
                                      ));
                                },
                                child: Text(
                                  "Book Appoinment",
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    primary: Colors.white,
                                    onPrimary: primary,
                                    side: BorderSide(
                                      width: 0.5,
                                      color: primary,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            // scrollDirection: Axis.vertical,
            itemCount: DoctorList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      // height: 400,
                      width: size.width * 0.90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(DoctorList[index].image),
                                radius: 40,
                              ),
                              title: Text(
                                DoctorList[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              subtitle: Text(
                                // maxLines: 2,
                                // overflow: TextOverflow.ellipsis,
                                "Gyneocoloist, Obstetician MBB,S FCPS (Gynecology & Obstetrician)",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    text: 'Under 15 Min \n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Wait Time',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: '33 Years \n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Experience',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: '98% (638) \n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Satisfied',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                height: 70,
                                width: size.width * 0.85,
                                decoration: BoxDecoration(
                                    color: clr4,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(
                                  child: Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "It was a nice meeting with Dr. Nagina Rashid.\nShe is very humrous, ethical and friendly. "),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              // height: 50,
                              width: size.width * 0.6,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 0.5),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "Health Bridge Hospital (DHA)",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Icon(
                                          Icons.circle_rounded,
                                          size: 12,
                                          color: Colors.green,
                                        ),
                                        Text(
                                          "Available Today",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                        Spacer(),
                                        Text(
                                          "RS. 2000",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Book(),
                                        ));
                                  },
                                  child: Text(
                                    "Video Consultation",
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(40, 50),
                                      primary: Colors.white,
                                      onPrimary: primary,
                                      textStyle: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      side: BorderSide(
                                        width: 0.5,
                                        color: primary,
                                      )),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Book(),
                                          ));
                                    },
                                    child: Text(
                                      "Book Appointment",
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        primary: secondary,
                                        onPrimary: Colors.white,
                                        textStyle: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold))),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
