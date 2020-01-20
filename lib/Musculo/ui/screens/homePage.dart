import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderAppInfo extends StatelessWidget{

  String motivationText = 'Rise and Grind';
  Image profilePicture;
  int weight;

  Widget getMotivationText(){
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
      child: Text(
        motivationText
      ),
    );
  }

  Widget profileIMage(){
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('assets/shared/profile_pictur.jpeg'),
          fit: BoxFit.cover
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        profileIMage(),
        getMotivationText()
      ],
    );
    
  }
  

}