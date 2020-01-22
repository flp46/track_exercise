import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderAppInfo extends StatelessWidget{

  String motivationText = 'Rise and Grind today es your day';
  Image profilePicture;
  String weight = '67';


//Texto motivacional del header
  Widget getMotivationText(){
    return Container(
      margin: EdgeInsets.only(left: 17),
      height: 20,
      width: 250,
      child: Text(
        motivationText
      ),
    );
  }


//Imagen de perfil del usuario
  Widget profileIMage(){
    return Container(
        margin: EdgeInsets.only(left: 15),
        width: 80,
        height: 90,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/shared/profile_picture.jpeg'),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle
        ),
      );
  }


  Widget actualWeight(){
    return Container(
      margin: EdgeInsets.only(left: 17),
      height: 20,
      width: 40,
      child: Text(
        weight 
      )
    );
  } 
  




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      width: double.infinity,
      height: 200,
      child: Row( 
        children: <Widget>[
          Container(
            child: profileIMage()
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              getMotivationText(),
              actualWeight()
            ],
          ),
        ],
      ),
    );
    
  }
  

}