import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'Cunst.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  CustomTextTitel(
                    text: "Sing Up",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset(
                    "icons/signup.svg",
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomContainer(
                    text: "Enter Your Username",
                    icon: Icons.person,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomContainer(
                    text: "Enter Your Email",
                    icon: Icons.email,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomContainer(
                    text: "Enter Your Password",
                    icon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomMaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("Welcome");
                    },
                    text: "Sing Up",
                  ),
                  CustomTextlButton(
                    text: "Already have an account ? Sing In",
                    onPressed: () {
                      Navigator.of(context).pushNamed("LogIn");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomIcon(
                        onPressed: () {},
                        text: "icons/facebook.svg",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomIcon(
                        onPressed: () {},
                        text: "icons/twitter.svg",
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomIcon(
                        onPressed: () {},
                        text: "icons/google-plus.svg",
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "images/signup_top.png",
                width: 85,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("images/main_bottom.png", width: 50),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "images/login_bottom.png",
                width: 90,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
