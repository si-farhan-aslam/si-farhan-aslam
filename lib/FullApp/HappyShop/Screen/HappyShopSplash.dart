import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartkit/FullApp/HappyShop/Helper/HappyShopColor.dart';
import 'package:smartkit/FullApp/HappyShop/Helper/HappyShopString.dart';
import 'package:smartkit/FullApp/HappyShop/Screen/HappyShopHome.dart';
 //import 'package:smartkit/SmartkitScreen/Screen/SmartKitHome.dart';

import 'HappyShopOnbording.dart';

class HappyShopSplash extends StatefulWidget {
  HappyShopSplash({Key key}) : super(key: key);

  @override
  _HappyShopSplashState createState() => _HappyShopSplashState();
}

class _HappyShopSplashState extends State<HappyShopSplash> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(
             builder: (context) => HappyShopHome(),
          ),
        );
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: back(),
              child: Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Image.asset(
                        "assets/image/micon.png",
                        width: 100.0,
                         fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Million Mart",
                        style: TextStyle(color: Color(0xFF0B3C68), fontFamily: 'open sans', fontWeight: FontWeight.w700, fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // CachedNetworkImage(
            //   imageUrl: 'https://smartkit.wrteam.in/smartkit/images/doodle.png',
            //   fit: BoxFit.fill,
            //   width: double.infinity,
            //   height: double.infinity,
            // ),
          ],
        ),
      ),
    );
  }

  back() {
    return BoxDecoration(
      color: Colors.white,
      // gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [primaryLight2, primaryLight3], stops: [0, 1]),
    );
  }

  startTime() async {
    var _duration = Duration(milliseconds: 1000);
    return Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HappyShopOnbording(),
        ));
  }
}
