import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';

const mockupHeight = 812;
const mockupWidth = 375;

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
    final width = MediaQuery.of(context).size.width;
    final scale = mockupWidth / width;
    final textScaleFactor = width / mockupWidth;
    return PixelPerfect(
      scale: scale,
      assetPath: imagePath + 'profile_light.jpeg',
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 15),
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    Image.asset(
                      imagePath + 'avatar.png',
                      scale: scale,
                    ),
                    for (var stats in userStats) ...[
                      SizedBox(
                        width: stats.leftPaddingFactor / mockupWidth * width,
                      ),
                      Column(
                        children: [
                          Text(
                            stats.value.toString(),
                            textScaleFactor: textScaleFactor,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.5,
                            ),
                          ),
                          Text(
                            stats.name,
                            textScaleFactor: textScaleFactor,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )
                    ]
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

class UserStats {
  final int value;
  final String name;
  final double leftPaddingFactor;

  UserStats({
    required this.value,
    required this.name,
    required this.leftPaddingFactor,
  });
}

final userStats = [
  UserStats(
    value: 210,
    name: 'post',
    leftPaddingFactor: 41,
  ),
  UserStats(
    value: 600,
    name: 'follower',
    leftPaddingFactor: 39,
  ),
  UserStats(
    value: 500,
    name: 'following',
    leftPaddingFactor: 24,
  ),
];
