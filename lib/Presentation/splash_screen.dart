import 'package:flutter/material.dart';
import '../Resources/Constants/dimensions.dart';
import '../Resources/Styles/colors.dart';
import 'LoginPages/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * .10,
            ),
            SizedBox(
                height: height * .55,
                child: Image.asset("lib/Resources/Assets/Images/Praana.png")),
            SizedBox(
              height: height * .1,
            ),
            Center(
              child: Container(
                color: Colors.transparent,
                height: height * .045,
                width: height * .045,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    secondaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}