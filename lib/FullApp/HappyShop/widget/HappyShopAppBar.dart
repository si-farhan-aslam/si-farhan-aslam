import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smartkit/FullApp/HappyShop/Helper/HappyShopString.dart';
import 'package:smartkit/FullApp/HappyShop/Screen/HappyShopCart.dart';
import 'package:smartkit/FullApp/HappyShop/Screen/HappyShopProfile.dart';
import 'package:smartkit/FullApp/HappyShop/widget/SearchBar.dart';
import 'package:smartkit/FullApp/HappyShop/widget/ManagerDialog.dart';

class HappyShopAppBar extends StatelessWidget {
  HappyShopAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/image/mmlogo.png',
        fit: BoxFit.cover,
      ),
      centerTitle: false,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Color(0xFF0A3966)),
      backgroundColor: Color(0xFFAED0F3),

      actions: <Widget>[
        InkWell(
          child: ImageIcon(
            AssetImage('assets/image/manager.png'),
            color: Color(0xFF0A3965),
            // withOpacity(0.5),
            size: 26,
          ),
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => searchBar(),
            //     ));
            showDialog(
                context: context,
                builder: (context) => manaGerDialog(),
                barrierDismissible: true);
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        InkWell(
          child: new Stack(children: <Widget>[
            Center(
              child: Icon(
                Icons.shopping_cart_rounded,
                color: Color(0xFF0A3965),
                // .withOpacity(0.5),
                size: 26,
              ),
            ),
            (CUR_CART_COUNT != null &&
                    CUR_CART_COUNT.isNotEmpty &&
                    CUR_CART_COUNT != "0")
                ? new Positioned(
                    top: 0.0,
                    right: 5.0,
                    bottom: 15,
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: new Center(
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: new Text(
                              CUR_CART_COUNT,
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                        )),
                  )
                : Container()
          ]),
          onTap: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HappyShopCart(),
                ));
          },
        ),
        SizedBox(
          width: 10.0,
        ),
      ],

      // backgroundColor: Colors.transparent,
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     // gradient: happyshopgradient
      //   ),
      // ),
      bottom: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0),
            child: searchBar(),
          ),
        ),
        // Container(
        //   color: Color(0xFFAED0F3),
        //   child: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: TextField(
        //       textAlign: TextAlign.justify,
        //       decoration: InputDecoration(
        //         fillColor: Colors.white,
        //         filled: true,
        //         // border: OutlineInputBorder(),
        //         border: OutlineInputBorder(
        //             borderSide: BorderSide(
        //               color: Color(0xFF0A3966),
        //             ),
        //             borderRadius: BorderRadius.circular(10)),
        //         hintText: 'Search',
        //         prefixIcon: Icon(
        //           Icons.search,
        //           color: Color(0xFF0A3966),
        //           size: 24,
        //         ),
        //         prefixIconConstraints:
        //             BoxConstraints(minWidth: 40, maxHeight: 24),
        //         isDense: true,
        //         suffixIcon: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.end,
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Icon(
        //                 Icons.mic,
        //                 size: 24,
        //                 color: Color(0xFF0A3966),
        //               ),
        //               Icon(
        //                 Icons.camera_alt_outlined,
        //                 size: 24,
        //                 color: Color(0xFF0A3966),
        //               )
        //             ],
        //           ),
        //         ),
        //         contentPadding:
        //             EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        //       ),
        //     ),
        //   ),
        // ),
        preferredSize: Size.fromHeight(120),
      ),
      elevation: 2.0,
    );
  }
}
