import 'package:e_wallet/components/constants.dart';
import 'package:e_wallet/components/rounded_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  final Color color;

  const WelcomeScreen({
    Key? key,
    this.color = black,
  }) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset(
                    'assets/designpage.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                // ignore: prefer_const_constructors
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '06:20 PM',
                        style: TextStyle(
                          fontFamily: 'Avenir Next',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Dec.16.2021 | Thursday',
                        style: TextStyle(
                            fontFamily: 'Avenir Next',
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: grey),
                      ),
                    ),
                    const SizedBox(
                      height: 186.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/ewallet.png',
                        height: 40,
                        width: 60.65,
                      ),
                    ),
                    const SizedBox(height: 17.6),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'eWallet',
                        style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 28.0,
                            fontWeight: FontWeight.w900,
                            color: black),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Open An Acount For Digital \nE-wallet Solution.Instant \nPayment\n\nJoin For Free',
                        style: TextStyle(
                            fontFamily: 'Avenir Next',
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: black),
                      ),
                    ),
                    const SizedBox(
                      height: 163.4,
                    ),
                    RoundedButton(text: 'Sign in', press: () {}),
                    const SizedBox(height: 23.0),
                    const ClickWidget(),
                    const SizedBox(
                      height: 53.0,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ClickWidget extends StatelessWidget {
  const ClickWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle defaultStyle = TextStyle(
      color: black,
      fontSize: 16.0,
      fontFamily: 'Avenir Next',
    );
    const TextStyle linkStyle = TextStyle(color: dark);

    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
            text: ' Create New Account',
            style: linkStyle,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
