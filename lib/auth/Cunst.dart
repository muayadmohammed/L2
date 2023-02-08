import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomMaterialButton extends StatelessWidget {
  CustomMaterialButton({
    super.key,
    this.onPressed,
    this.text,
  });
  void Function()? onPressed;
  String? text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: 300,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: const Color(0xFF55287E),
      onPressed: onPressed,
      child: Text(
        text!,
        style: const TextStyle(
          fontFamily: "Courgette",
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}

class CustomTextlButton extends StatelessWidget {
  CustomTextlButton({
    super.key,
    this.onPressed,
    this.text,
  });
  void Function()? onPressed;
  String? text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: "Courgette",
          color: Color.fromARGB(255, 99, 62, 133),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    this.text,
    this.icon,
    this.textEditingController,
    this.isPassword=false,
  });
  String? text;
  IconData? icon;
  TextEditingController? textEditingController;
  bool isPassword;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFF0E6FF),
            blurRadius: 1,
          ),
        ],
        color: const Color(0xFFF0E6FF),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: TextFormField(
          controller: textEditingController,
          maxLines: 1,
          cursorColor: const Color(0xFF55287E),
          cursorHeight: 20,
          cursorWidth: 1.3,
          keyboardType: TextInputType.visiblePassword,
          obscureText: isPassword!,
          cursorRadius: const Radius.circular(10),
          decoration: InputDecoration(
            label: Text(text!),
            labelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xFF55287E),
            ),
            prefixIcon: Icon(
              icon,
              size: 18,
              color: const Color(0xFF55287E),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  CustomIcon({
    super.key,
    this.onPressed,
    this.text,
  });
  void Function()? onPressed;
  String? text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: const Color(0xFF55287E), width: 1)),
        child: SvgPicture.asset(
          text!,
          color: const Color(0xFF55287E),
        ),
      ),
    );
  }
}

class CustomTextTitel extends StatelessWidget {
  CustomTextTitel({
    super.key,
    this.text,
  });
  String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text!,
      style: const TextStyle(
        color: Color(0xFF55287E),
        fontWeight: FontWeight.w400,
        fontFamily: "Courgette",
        fontSize: 40,
        shadows: [
          Shadow(
            color: Color(0xFF55287E),
            blurRadius: 2,
          ),
        ],
      ),
    );
  }
}
