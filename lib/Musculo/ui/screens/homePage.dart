import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderAppInfo extends StatelessWidget{

  String motivationText = 'Rise and Grind, today is your day';
  String profilePicture;
  int weightNumber = 67;
  List weigthUnitList = [' Libras', ' Kilos'];
  int weigthUnitData;

  HeaderAppInfo(this.motivationText, this.profilePicture, this.weightNumber, this.weigthUnitData);

//Texto motivacional del header
  Widget getMotivationText(){
    return Container(
      // margin: EdgeInsets.only(left: 75),
      child: Text(
        motivationText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
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
          image: AssetImage(profilePicture),
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
        "${weightNumber.toString()  +  weigthUnitList[weigthUnitData]}",
        style: TextStyle(
          fontWeight: FontWeight.bold,
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
      height: 180,
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.65,
            child: backgroundImage(),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    getMotivationText(),
                    actualWeight()
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, right: 30),
                child: Opacity(
                  opacity: 0.9,
                  child: profileIMage()
                )
                
              ),

            ],
          ),
        ],
      )

    );
  }
  

}