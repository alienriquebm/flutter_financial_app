import 'package:flutter/material.dart';
import 'package:financial_app/components/header.dart';
import 'package:financial_app/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const Summary(),
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$12,939.25',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Checking Account Balance',
                                style: const TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('\$100,203.32',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                'Savings Account Balance',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding * 2,
                    ),
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // Create a grid with 2 columns. If you change the scrollDirection to
                      // horizontal, this produces 2 rows.
                      crossAxisCount: 2,
                      // Generate 100 widgets that display their index in the List.
                      children: [
                        DashboardItem(
                          iconColor: Color(0XFFF70604),
                          title: 'Bill Pay',
                          subtitle: 'Due on May 14th',
                          icon: Icons.assignment,
                          backgroundColor: Color(0XFFFEEAEA),
                        ),
                        DashboardItem(
                          iconColor: Color(0XFF722FE0),
                          title: 'Rewards',
                          subtitle: '12,324 points',
                          icon: Icons.access_alarm,
                          backgroundColor: Color(0XFFEDE4FE),
                        ),
                        DashboardItem(
                          iconColor: Color(0XFF56CD96),
                          title: 'Statement',
                          subtitle: 'June 2020 Available',
                          icon: Icons.access_alarm,
                          backgroundColor: Color(0XFFE3FFEE),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    Key? key,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.backgroundColor,
  }) : super(key: key);

  final Color iconColor;
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Stack(
        children: [
          Positioned(
            right: defaultPadding,
            top: defaultPadding,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Icon(
                icon,
                size: 32,
                color: iconColor,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  subtitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: iconColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Ali Briceño,',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'What do you want to do today?',
            ),
          ],
        ),
        Icon(Icons.stacked_line_chart)
      ],
    );
  }
}
