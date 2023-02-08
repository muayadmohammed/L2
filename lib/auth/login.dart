import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new1/auth/welcome.dart';

import 'Cunst.dart';

class LogIn extends StatefulWidget {
  const LogIn({
    super.key,
  });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  Future _LogIn() async {
    try {
      UserCredential credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailAddress.text.trim(),
        password: _password.text.trim(),
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
                  textEditingController: _emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),

                CustomContainer(
                  text: "Enter Your Password",
                  icon: Icons.lock,
                  textEditingController: _password,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMaterialButton(
                  text: "LogIn",
                  onPressed: () async {
                    var x = await _LogIn();
                    print(_emailAddress.text);
                    print(_password.text);
                    if (x != null) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Welcome()));
                    } else {
                      print(x);
                    }
                  },
                ),
                const SizedBox(
                  height: 2,
                ),
                //"Don't have an account ? Sing Up"
                CustomTextlButton(
                  text: "Don't have an account ? Sing Up",
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    // Navigator.of(context).pushNamed("SingUp");
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
