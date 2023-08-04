import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../gen/localization/l10n.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      _checkFirstTime();
    });
  }

  _checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = prefs.getBool("isFirstTime");

    if (isFirstTime == null) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil("/onBoarding", (route) => false);
      prefs.setBool("isFirstTime", true);
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil("/home", (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil("/onBoarding", (route) => false);
        },
        child: Column(
          children: [
            const SizedBox(height: 243),
            Image.asset("images/Cool Kids Staying Home.png"),
            const SizedBox(height: 16),
            Center(
                child: Text(
              Str.of(context).next,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3C3A36)),
            )),
          ],
        ),
      ),
    );
  }
}
