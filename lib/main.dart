import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Profile Screen',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: imagePath + 'profile_light.jpeg',
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 15),
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'pieroborgo',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -1,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(iconsPath + 'new-video.png'),
                      constraints: BoxConstraints.tight(Size(21.5, 21.5)),
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(width: 30.5),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(iconsPath + 'menu.png'),
                      constraints: BoxConstraints.tight(Size(21.5, 21.5)),
                      padding: EdgeInsets.zero,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
