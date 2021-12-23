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
  List<Service> services = [
    Service(img: 'assets/send_money.png', title: 'Send\nMoney'),
    Service(img: 'assets/receive_money.png', title: ' Recieve\n Money'),
    Service(img: 'assets/mobile_prepaid.png', title: ' Mobile\nPrepaid'),
    Service(
        img: 'assets/electricity_bill.png', title: 'Electricity \n      Bill'),
    Service(img: 'assets/cashback.png', title: 'CashBack\n     Offer'),
    Service(img: 'assets/movie_ticket.png', title: '  Movie\n Tickets'),
    Service(img: 'assets/flight_ticket.png', title: ' Flight\nTickets'),
    Service(img: 'assets/more_options.png', title: 'More\n    Options'),
  ];
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: const Drawer(),
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/ewallet.png',
              height: 31.0,
              width: 47.0,
            ),
          ],
        ),
        centerTitle: false,
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
          InkWell(
            onTap: () {
              _scaffoldkey.currentState?.openDrawer();
            },
            child: Image.asset(
              'assets/Union.png',
              height: 19.0,
              width: 19.0,
            ),
          ),
          const SizedBox(width: 25.0),
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
                const SizedBox(height: 20.0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Image.asset(
                  'assets/switch_icon.png',
                  height: 24.0,
                  width: 24.0,
                )
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
          //   child: Wrap(
          //     children: [
          //       for (Service service in services)
          //         Padding(
          //           padding: const EdgeInsets.only(
          //               right: 14.0, left: 14.0, bottom: 20.0),
          //           child: ServiceButton(
          //             press: () {},
          //             text: service.title,
          //             image: service.img,
          //           ),
          //         )
          //     ],
          //   ),
          // ),

          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 2 / 2.5,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 20.0,
            ),
            itemCount: services.length,
            itemBuilder: (BuildContext context, int index) {
              Service service = services[index];
              return ServiceButton(
                press: () {},
                text: service.title,
                image: service.img,
              );
            },
          ),
        ],
      ),
    );
  }
}

class Service {
  final String img;
  final String title;

  Service({required this.img, required this.title});
}
