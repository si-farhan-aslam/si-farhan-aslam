// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:smartkit/FullApp/HappyShop/Helper/HappyShopColor.dart';

// ignore: camel_case_types
class ProDuctDownSec extends StatefulWidget {
  const ProDuctDownSec({Key key}) : super(key: key);

  @override
  _ProDuctDownSecState createState() => _ProDuctDownSecState();
}

class _ProDuctDownSecState extends State<ProDuctDownSec> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Container(
      color: Colors.white,
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Similar Products",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: primary),
                  ),
                  Spacer(),
                  Text('See ALL', style: Theme.of(context).textTheme.subtitle2)
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                  return _Card(130,120);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20,);
                  },
                  itemCount: 10),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Seller Products",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: primary),
                  ),
                  Spacer(),
                  // Text('See ALL', style: Theme.of(context).textTheme.subtitle2)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              margin: EdgeInsets.all(12),
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 1,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return _Card(120,80);
                  // return Container(
                  //   color: Colors.transparent,
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //
                  //       Image.asset('assets/image/micon.png',width: 120,height: 80,),
                  //       SizedBox(
                  //         height: 2.0,
                  //       ),
                  //       Text('Cat $index',style: Theme.of(context)
                  //           .textTheme
                  //           .headline6
                  //           .copyWith(color: primary),),
                  //     ],
                  //   ),
                  // );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Top Selling Similar Products",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: primary),
                  ),
                  Spacer(),
                  // Text('See ALL', style: Theme.of(context).textTheme.subtitle2)
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return _Card(130,120);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 20,);
                  },
                  itemCount: 10),
            ),

          ],
      ),
    ),
        ));
  }
}
_Card(double h, double w){
  return Container(
    height: h,
    width: w,
    child: Card(
      child: Column(
        children: [
          Container(child: Image(image: AssetImage('assets/image/micon.png'),width: w, height: h, fit: BoxFit.fill,))
         // ,Divider(thickness: 1,
         //  color: Colors.grey,)
         //  ,Container(
         //    height: double.infinity,
         //  )
          ,Text("Item Name")
        ],
      ),
    ),
  );
}
