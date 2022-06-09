import 'package:doctors_booking_app/UI/Bottom_nav_bar.dart';
import 'package:doctors_booking_app/UI/Home.dart';
import 'package:doctors_booking_app/UI/User_Profile.dart';
import 'package:doctors_booking_app/components/already_have_account.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: clr4,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
          Widget>[
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            // height: 300,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "assets/Doc.png",
                      height: size.height * 0.35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                          labelText: "Email",
                          hintText: "Enter your Email.....",
                          labelStyle: TextStyle(fontSize: 14, color: secondary),
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                          labelText: "Password",
                          hintText: "Enter your password.....",
                          labelStyle: TextStyle(fontSize: 14, color: secondary),
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
                          "Login",
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Navbar(),
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
                    SizedBox(
                      height: 30,
                    ),
                    AlreadyHaveAnAccountCheck(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserProfile(),
                            ));
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
