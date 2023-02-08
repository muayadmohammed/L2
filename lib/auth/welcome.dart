import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Cunst.dart';
import 'logIn.dart';

class Welcome extends StatelessWidget {
  Welcome({
    super.key,
 
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // CustomTextTitel(
                //   text: "Welcome To My App",
                // ),
                xx(
                  text: "Welcome To My App",
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 60,
                ),
                SvgPicture.asset(
                  "icons/chat.svg",
                  height: 280,
                  width: 280,
                  fit: BoxFit.cover,
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
            child: Image.asset(
              "images/main_bottom.png",
              width: 75,
            ),
          ),
        ],
      ),
    );
  }
}
