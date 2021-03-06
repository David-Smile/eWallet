import 'package:e_wallet/components/constants.dart';
import 'package:e_wallet/components/rounded_button.dart';
import 'package:e_wallet/screens/home_screen.dart';
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
          // const SizedBox(
          //   width: 24,
          // ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    '06:20 PM',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  const Text(
                    'Dec.16.2021 | Thursday',
                    style: TextStyle(
                      fontFamily: 'Avenir Next',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: grey,
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
                      'eWalle',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 28.0,
                        fontWeight: FontWeight.w500,
                      ),
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
                          color: grey),
                    ),
                  ),
                  const SizedBox(
                    height: 163.4,
                  ),
                  RoundedButton(text: 'Sign in', press: () {}),
                  const SizedBox(height: 23.0),
                  const Center(child: ClickWidget()),
                  const SizedBox(
                    height: 53.0,
                  ),
                ],
              ),
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
      fontSize: 16.0,
      fontFamily: 'Avenir Next',
    );

    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
            text: ' Create New Account',
            style: Theme.of(context).primaryTextTheme.bodyText1?.copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.w400
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
          ),
        ],
      ),
    );
  }
}
