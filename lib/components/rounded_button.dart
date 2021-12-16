import 'package:e_wallet/components/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = dark,
    this.textColor = dark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 50.0,
      decoration: BoxDecoration(
          color: yellow,
          borderRadius: BorderRadius.circular(10.0),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            // ignore: prefer_const_constructors
            BoxShadow(
              offset: const Offset(0.0, 16.0),
              blurRadius: 60.0,
              spreadRadius: 0.0,
              color: const Color.fromRGBO(134, 109, 201, 0.16),
            ),
          ]),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(24.0),
          onTap: () {},
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontFamily: 'Avenir Next',
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
