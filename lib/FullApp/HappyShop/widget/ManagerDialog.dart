import 'package:flutter/material.dart';

// ignore: camel_case_types
class manaGerDialog extends StatefulWidget {
  const manaGerDialog({Key key}) : super(key: key);

  @override
  _manaGerDialogState createState() => _manaGerDialogState();
}

// ignore: camel_case_types
class _manaGerDialogState extends State<manaGerDialog> {
  @override
  _getDivider() {
    return Divider(
      color: Colors.grey,
      height: 1,
    );
  }
  _sizeBox(){
    return SizedBox(
      height: 10.0,
    );
  }

  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Call"), Icon(Icons.call)],
            ),
            _sizeBox(),
            _getDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Chat"),
                Icon(
                  Icons.chat,
                )
              ],
            ),
            _sizeBox(),
            _getDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Whatsapp"),
                Icon(
                  Icons.navigation,
                )
              ],
            ),
            _sizeBox(),
            _getDivider(),
            _sizeBox(),
            InkWell(
                child: Text(
                  "Close",
                  style: TextStyle(color: Colors.red,),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
