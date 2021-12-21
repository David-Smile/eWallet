import 'package:e_wallet/components/constants.dart';
import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String text;
  final String image;
  final Function press;
  final Color color, textColor;
  const ServiceButton(
      {Key? key,
      required this.press,
      required this.text,
      this.color = offwhite,
      this.textColor = blue,
      this.image = 'assets/'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: offwhite.withOpacity(0.5),
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    height: 24.0,
                    width: 22.62,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          text,
          style: const TextStyle(fontFamily: 'Avenir Next', fontSize: 10),
        )
      ],
    );
  }
}
