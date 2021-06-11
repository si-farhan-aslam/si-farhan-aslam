// import 'package:admob_flutter/admob_flutter.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:smartkit/SmartkitScreen/Widget/theme.dart';
import 'package:smartkit/FullApp/HappyShop/HappyShopMain.dart';
import 'package:smartkit/FullApp/HappyShop/Helper/HappyShopColor.dart';
import 'package:smartkit/FullApp/HappyShop/Helper/HappyShopString.dart';

import 'Constant/SmartKitColor.dart';
 // import 'SmartkitScreen/Screen/Intro.dart';
// import 'SmartkitScreen/Screen/SmartKitHome.dart';
import 'package:smartkit/FullApp/HappyShop/Screen/HappyShopSplash.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Admob.initialize();
  // Add a list of test ids.
  // Admob.initialize(testDeviceIds: ['YOUR DEVICE ID']);

  // FirebaseApp app = await Firebase.initializeApp();
  // assert(app != null);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartKit',
      // ThemeData(
      //   primaryColor: Colors.white,
      // visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      // mobile: IntroSlider(),
      home: ScreenTypeLayout(
          mobile:HappyShopSplash(),

      ),
    );
  }
}
