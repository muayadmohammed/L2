import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Cunst.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                CustomTextTitel(
                  text: "Login",
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
