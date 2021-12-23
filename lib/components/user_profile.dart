import 'package:e_wallet/components/constants.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final String profile;
  const UserProfile({
    Key? key,
    required this.press,
    required this.text,
    this.color = offwhite,
    this.textColor = blue,
    this.profile = 'assets/recipient.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
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
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: white,
                    border: Border.all(color: blue.withOpacity(0.2)),
                  ),
                  child: Image.asset(
                    profile,
                    height: 41.35,
                    width: 38.7,
                  ),
                ),
                const SizedBox(
                  height: 17.0,
                ),
                Text(
                  text,
                  style:
                      const TextStyle(fontFamily: 'Avenir Next', fontSize: 12),
                )
              ],
            )),
      ),
    );
  }
}
