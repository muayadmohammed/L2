import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.zero,
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    "Welcome To My App",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Courgette",
                        fontSize: 40,
                        shadows: [
                          Shadow(
                            color: Colors.black12,
                            blurRadius: 2,
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SvgPicture.asset(
                    "icons/chat.svg",
                    height: 280,
                    width: 280,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 250,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: const Color(0xFF55287E),
                    onPressed: () {
                      Navigator.of(context).pushNamed("LogIn");
                    },
                    child: const Text(
                      "LogIn",
                      style: TextStyle(
                        fontFamily: "Courgette",
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 250,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: const Color(0xFFF0E6FF),
                    onPressed: () {
                      Navigator.of(context).pushNamed("SingUp");
                    },
                    child: const Text(
                      "SingUp",
                      style: TextStyle(
                        fontFamily: "Courgette",
                        color: Color(0xFF55287E),
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "images/main_top.png",
                width: 75,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("images/main_bottom.png", width: 50),
            ),
          ],
        ),
      ),
    );
  }
}
