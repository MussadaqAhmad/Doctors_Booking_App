import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  late bool _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
  }

  int _groupValue = -1;

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
          "My Profile",
          style: TextStyle(color: primary, fontSize: 18),
        ),
      ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Name",
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
                            borderSide: BorderSide(color: secondary),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: secondary),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 42,
                            vertical: 12,
                          ),
                          // labelText: "Name",
                          hintText: "Mussadaq Ahmad Jamil",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey),
                          // labelStyle: TextStyle(fontSize: 14, color: secondary),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            // labelText: "Phone Number",
                            hintText: "0306 7855035",
                            // labelStyle:
                            //     TextStyle(fontSize: 14, color: secondary),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_rounded,
                              color: secondary,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            // labelText: "Email",
                            hintText: "mussadaq900@gmail.com",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Age in years",
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
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            // labelText: "Age",
                            hintText: "24",
                            // labelStyle:
                            //     TextStyle(fontSize: 14, color: secondary),
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
                              selected: true,
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
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: secondary,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: secondary,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            // labelText: "Password",
                            hintText: "1216965123",
                            // labelStyle:
                            //     TextStyle(fontSize: 14, color: secondary),
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: size.width * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          child: Text(
                            "Update Profile",
                          ),
                          onPressed: () {},
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
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
