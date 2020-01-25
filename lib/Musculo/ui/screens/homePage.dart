import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderAppInfo extends StatelessWidget{

  String motivationText = 'Rise and Grind, today is your day';
  Image profilePicture;
  int weightNumber = 67;
  List weigthUnit = [' Libras', ' Kilos'];


//Texto motivacional del header
  Widget getMotivationText(){
    return Container(
      // margin: EdgeInsets.only(left: 75),
      child: Text(
        motivationText,
        style: TextStyle(
          color: Colors.white
        )
      ),
    );
  }


//Imagen de perfil del usuario
  Widget profileIMage(){
    return Container(
      margin: EdgeInsets.only(left: 5),
      width: 80,
      height: 90,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/shared/profile_picture.jpeg'),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      )
    );

  }


// Peso actual del usuario
  Widget actualWeight(){
    return Container(
      child: Text(
        "${weightNumber.toString()  +  weigthUnit[0]}",
          style: TextStyle(
          color: Colors.white
        )
      )
    );
  }


//Imagen de fondo para trabajar el background
  Widget backgroundImage(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage('assets/shared/background_header.jpg'),
          fit: BoxFit.cover,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            offset: Offset(1.0, 1.0),
            blurRadius: 10.0

          )
        ]
      ),
    );
  }
  




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: 190,
      child: Stack(
        children: <Widget>[
          backgroundImage(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  getMotivationText(),
                  actualWeight()
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: profileIMage()
              ),

            ],
          ),
        ],
      )

    );
  }
  

}