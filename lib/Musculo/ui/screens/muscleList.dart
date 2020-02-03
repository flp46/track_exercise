import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MuscleList extends StatelessWidget{
  
  List <String> bodyMuscleList = ['Pecho', 'Biceps', 'Espalda', 'Triceps', 'Isquiotibiales', 'Cuadriceps', 'Gluteos', 'Pantorrila'];
  int bodyMuscleIndex;

  MuscleList(this.bodyMuscleIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final muscleBodyCard = Container(
      height: 100,
      child: Card(
        color: Colors.blue,
        margin: EdgeInsets.only(left: 25, right: 25, top: 20),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: <Widget>[
            Image.asset(
                'assets/shared/mancuernas.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    '${bodyMuscleList[bodyMuscleIndex]}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
                FlatButton(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: (){},
                ),                
              ],
            )
          ],
        )
      )
    );




    return muscleBodyCard;
  }
  
  void printCards(){
    var exercise = bodyMuscleList[bodyMuscleIndex];
  }
  

  
  
  


}