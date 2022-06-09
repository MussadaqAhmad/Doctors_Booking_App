import 'package:doctors_booking_app/UI/Login.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
      resizeToAvoidBottomInset: false,
      backgroundColor: clr4,
      // appBar: AppBar(
      //   systemOverlayStyle:
      //       const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      //   title: Text(
      //     "My Profile",
      //     style: TextStyle(fontSize: 15, color: primary),
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Center(
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Name",
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: secondary),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 42,
                            vertical: 12,
                          ),
                          labelText: "Name",
                          hintText: "Enter your Name.....",
                          hintStyle:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                          labelStyle: TextStyle(fontSize: 14, color: secondary),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            labelText: "Phone Number",
                            hintText: "Enter your Phone Number.....",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            labelText: "Email",
                            hintText: "Enter your Email.....",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Age in years",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            labelText: "Age",
                            hintText: "Enter your Age.....",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 0,
                              groupValue: _groupValue,
                              title: const Text("Male"),
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
                              title: const Text("Female"),
                              onChanged: (newValue) => setState(
                                  () => _groupValue = newValue.hashCode),
                              activeColor: secondary,
                              selected: false,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: secondary),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 12,
                            ),
                            labelText: "Password",
                            hintText: "Enter your password.....",
                            labelStyle:
                                TextStyle(fontSize: 14, color: secondary),
                            hintStyle: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: size.width * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          child: Text(
                            "Sign Up",
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
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
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0,
      //   child: Padding(
      //     padding: const EdgeInsets.all(17.0),
      //     child: SizedBox(
      //       width: size.width * 0.9,
      //       height: 50,
      //       child: ElevatedButton(
      //         child: Text(
      //           "Sign Up",
      //         ),
      //         onPressed: () {},
      //         style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10)),
      //             primary: secondary,
      //             onPrimary: Colors.white,
      //             textStyle: const TextStyle(
      //               fontWeight: FontWeight.bold,
      //               fontSize: 16,
      //             )),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
