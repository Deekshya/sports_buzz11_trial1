import 'package:flutter/material.dart';
import 'package:sports_buzz11_trial1/components/ReusableDrawerTabs.dart';

class MainScreenDrawer extends StatelessWidget {
  const MainScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd9e8f6),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  color: Color(0xff0d263d),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage('images/banner.jpeg'),
                        radius: 70,
                        backgroundImage: AssetImage('images/banner.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'SportsBuzz11',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 20),
                      //   child: Row(
                      //     children: [
                      //       GestureDetector(
                      //         child: Image(
                      //           image: AssetImage('images/insta.png'),
                      //           width: 100,
                      //           height: 100,
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         child: Image(
                      //           image: AssetImage('images/twitter.png'),
                      //           width: 100,
                      //           height: 100,
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         child: Image(
                      //           image: AssetImage('images/whatsapp.png'),
                      //           width: 100,
                      //           height: 100,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: ReusableDrawerTabs(
                    label: 'About Us', iconName: Icons.info)),
            Expanded(
                flex: 1,
                child: ReusableDrawerTabs(
                    label: 'Help and Support',
                    iconName: Icons.contact_support)),
            Expanded(
                flex: 1,
                child: ReusableDrawerTabs(
                    label: 'Feedback', iconName: Icons.feedback)),
            Expanded(
                flex: 1,
                child:
                    ReusableDrawerTabs(label: 'Share', iconName: Icons.share)),
            Expanded(
                flex: 1,
                child: ReusableDrawerTabs(
                    label: 'Rate Us', iconName: Icons.star_rate)),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'version 1.0.0',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
