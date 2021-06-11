// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_webservice/directions.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt ;

// ignore: camel_case_types
class searchBar extends StatefulWidget {
  const searchBar({Key key}) : super(key: key);
  @override
  _searchBarState createState() => _searchBarState();
}
// FocusScopeNode focusScopeNode = FocusScopeNode();

class _searchBarState extends State<searchBar> {
  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Listening';
  double _confidence = 1.0;
  void _listen() async{
    if(!_isListening){
      bool available = await _speech.initialize(
        onStatus: (val)=>print('OnStatus $val'),
        onError: (val)=>print('OnError $val'),
      );
      if(available){
        setState(() {
          _isListening = true;
        });
        _speech.listen(
          onResult: (val) => setState((){
                      _text = val.recognizedWords;

          })
        );
      }
      else{
        setState(() {
          _isListening = false;
          _speech.stop();
        });
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(

      autofocus: false,
      textAlign: TextAlign.justify,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        // border: OutlineInputBorder(),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF0A3966),
            ),
            borderRadius: BorderRadius.circular(10)),
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xFF0A3966),
          size: 24,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 40, maxHeight: 24),
        isDense: true,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [

              InkWell(
                child: Image.asset(
                  'assets/icon/icon.png',
                  width: 24, height: 24,
                ),
                onTap: (){
                  _listen();
                },
              ),
              SizedBox(width: 4,),
              Icon(
                Icons.camera_alt,
                size: 24,
                color: Color(0xFF0A3966),
              ),
            ],
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      ),
    );
  }
}
