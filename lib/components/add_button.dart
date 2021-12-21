import 'package:e_wallet/components/constants.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Function press;
  final Color color;

  const AddButton({
    Key? key,
    required this.press,
    this.color = yellow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48.0,
        width: 48.0,
        decoration: BoxDecoration(
          color: yellow,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(100.0),
            onTap: () {},
            child: const Icon(
              Icons.add,
              color: blue,
            ),
          ),
        ));
  }
}
