import 'package:e_wallet/components/add_button.dart';
import 'package:e_wallet/components/constants.dart';
import 'package:e_wallet/components/service_buttons.dart';
import 'package:e_wallet/components/user_profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/ewallet.png',
          height: 31.0,
          width: 47.0,
        ),
        title: const Text(
          'eWalle',
          style: TextStyle(
            fontSize: 28.0,
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.w500,
            color: dark,
          ),
        ),
        backgroundColor: white,
        elevation: 0,
        actions: [
          Image.asset(
            'assets/Union.png',
            height: 19.0,
            width: 19.0,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Account Overview',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: blue,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 116.0,
                  decoration: BoxDecoration(
                    color: offwhite.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              '20,600',
                              style: TextStyle(
                                fontFamily: 'Avenir Next',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Current Balance',
                              style: TextStyle(
                                fontFamily: 'Avenir Next',
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 128.0,
                      ),
                      AddButton(press: () {})
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                Row(
                  children: [
                    const Text(
                      'Send Money',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: blue,
                      ),
                    ),
                    const SizedBox(
                      width: 207,
                    ),
                    Image.asset(
                      'assets/scan_icon.png',
                      height: 24.0,
                      width: 24.0,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 21.0,
          ),
          SizedBox(
            height: 120.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    AddButton(press: () {}),
                    const SizedBox(
                      width: 20.0,
                    ),
                    UserProfile(
                      press: () {},
                      text: 'Mike',
                      profile: 'assets/recipient1.png',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    UserProfile(
                      press: () {},
                      text: 'Joshpeh',
                      profile: 'assets/recipient2.png',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    UserProfile(
                      press: () {},
                      text: 'Ashley',
                      profile: 'assets/recipient3.png',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                const Text(
                  'Services',
                  style: TextStyle(
                    fontFamily: 'Avenir Next',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: blue,
                  ),
                ),
                const SizedBox(
                  width: 239,
                ),
                Image.asset(
                  'assets/switch_icon.png',
                  height: 24.0,
                  width: 24.0,
                )
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 96.0,
            width: 324.0,
            child: Row(
              children: <Widget>[
                ServiceButton(
                  press: () {},
                  text: ' Send\nMoney',
                  image: 'assets/send_money.png',
                ),
                const SizedBox(
                  width: 28.0,
                ),
                ServiceButton(
                  press: () {},
                  text: 'Recieve\n Money',
                  image: 'assets/receive_money.png',
                ),
                const SizedBox(
                  width: 28.0,
                ),
                ServiceButton(
                  press: () {},
                  text: ' Mobile\nPrepaid',
                  image: 'assets/mobile_prepaid.png',
                ),
                const SizedBox(
                  width: 28.0,
                ),
                ServiceButton(
                  press: () {},
                  text: 'Electricity\n      Bill',
                  image: 'assets/electricity_bill.png',
                ),
                const SizedBox(
                  height: 28.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 96.0,
            width: 324.0,
            child: Row(
              children: <Widget>[
                ServiceButton(
                  press: () {},
                  text: 'CashBack\n     Offer',
                  image: 'assets/cashback.png',
                ),
                const SizedBox(
                  width: 28.0,
                ),
                ServiceButton(
                  press: () {},
                  text: '  Movie\n Tickets',
                  image: 'assets/movie_ticket.png',
                ),
                const SizedBox(
                  width: 28.0,
                ),
                ServiceButton(
                  press: () {},
                  text: ' Flight\nTickets',
                  image: 'assets/flight_ticket.png',
                ),
                const SizedBox(
                  width: 28.0,
                ),
                ServiceButton(
                  press: () {},
                  text: 'Electricity\n      Bill',
                  image: 'assets/more_options.png',
                ),
                const SizedBox(
                  height: 28.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
