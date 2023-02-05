import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Cunst.dart';

class LogIn extends StatelessWidget {
  const LogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CustomTextTitel(
                //   text: "Login",
                // ),
                xx(
                  text: "Login",
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 25,
                ),
                SvgPicture.asset(
                  "icons/login.svg",
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  text: "Enter Your Email",
                  icon: Icons.person,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  text: "Enter Your Password",
                  icon: Icons.lock,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMaterialButton(
                  text: "LogIn",
                  onPressed: () {
                    Navigator.of(context).pushNamed("Welcome");
                  },
                ),
                const SizedBox(
                  height: 2,
                ),
                //"Don't have an account ? Sing Up"
                CustomTextlButton(
                  text: "Don't have an account ? Sing Up",
                  onPressed: () {
                    Navigator.of(context).pushNamed("SingUp");
                  },
                )
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
              width: 50,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "images/login_bottom.png",
              width: 110,
            ),
          ),
        ],
      ),
    );
  }
}

class xx extends StatelessWidget {
  xx({
    super.key,
    required this.text,
    required this.color,
  });
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: "Gilroy Pro",
      
        fontSize: 40,
        shadows: const [
          Shadow(
            color: Color(0xFF55287E),
            blurRadius: 2,
          ),
        ],
      ),
    );
  }
}
