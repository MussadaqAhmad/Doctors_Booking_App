import 'package:doctors_booking_app/UI/Bottom_nav_bar.dart';
import 'package:doctors_booking_app/UI/Home.dart';
import 'package:doctors_booking_app/UI/Login.dart';
import 'package:doctors_booking_app/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Login()),
    );
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/doctor.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
        // key: introKey,
        // globalBackgroundColor: Colors.white,
        // globalHeader: Align(
        //   alignment: Alignment.topRight,
        //   child: SafeArea(
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 16, right: 16),
        //       child: _buildImage('doctor.png', 100),
        //     ),
        //   ),
        // ),
        // globalFooter: SizedBox(
        //   width: double.infinity,
        //   height: 60,
        //   child: ElevatedButton(
        //     child: const Text(
        //       'Let\'s go right away!',
        //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        //     ),
        //     onPressed: () => _onIntroEnd(context),
        //   ),
        // ),
        pages: [
          PageViewModel(
            title: "Stay Fit",
            body: "Physical fitness is the first requisite of happiness.",
            image: _buildImage('Doc.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Stay Healthy",
            body:
                "It is health that is the real wealth, and not pieces of gold and silver.",
            image: _buildImage('Doc2.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Mainten Your Diet",
            body:
                "You can’t control what goes on outside, but you CAN control what goes on inside.",
            image: _buildImage('Doc3.png'),
            decoration: pageDecoration,
          ),
          // PageViewModel(
          //   title: "Full Screen Page",
          //   body:
          //       "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
          //   image: _buildFullscreenImage(),
          //   decoration: pageDecoration.copyWith(
          //     contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          //     fullScreen: true,
          //     bodyFlex: 2,
          //     imageFlex: 3,
          //   ),
          // ),
          PageViewModel(
            title: "Stay Away From Germs",
            body: "A sad soul can be just as lethal as a germ.",
            image: _buildImage('Doc4.png'),
            // footer: ElevatedButton(
            //   onPressed: () {
            //     introKey.currentState?.animateScroll(0);
            //   },
            //   child: const Text(
            //     'FooButton',
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.lightBlue,
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8.0),
            //     ),
            //   ),
            // ),
            decoration: pageDecoration,
          ),
          // PageViewModel(
          //   title: "Title of last page - reversed",
          //   bodyWidget: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const [
          //       Text("Click on ", style: bodyStyle),
          //       Icon(Icons.edit),
          //       Text(" to edit a post", style: bodyStyle),
          //     ],
          //   ),
          //   decoration: pageDecoration.copyWith(
          //     bodyFlex: 2,
          //     imageFlex: 4,
          //     bodyAlignment: Alignment.bottomCenter,
          //     imageAlignment: Alignment.topCenter,
          //   ),
          //   image: _buildImage('doctor.jpg'),
          //   reverse: true,
          // ),
        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        // showBackButton: true,
        showNextButton: true,
        //rtl: true, // Display as right-to-left
        // back: const Icon(Icons.arrow_back),
        skip: Text('Skip',
            style: TextStyle(fontWeight: FontWeight.w600, color: secondary)),
        next: Icon(
          Icons.arrow_forward,
          color: secondary,
        ),
        done: Text('Done',
            style: TextStyle(fontWeight: FontWeight.w600, color: secondary)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeColor: secondary,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: BoxDecoration(color: Colors.white));
  }
}
