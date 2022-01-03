import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quizz_app/screens/main_menu.dart';
import 'package:quizz_app/screens/quizz_screen.dart';
import 'package:quizz_app/ui/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20,right: 20,top: 70),
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 20
                )
              ]
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                   child: (
                   const Text("Congratulations!",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white
                ),)
            ),),
               Text("Your Score is "
                 "${widget.score } / 10",
                 style: const TextStyle(
                   color: Colors.white,
                   fontSize: 25.0,
                   fontWeight: FontWeight.bold,
                 ),

               )
           ],),
          ),
          const SizedBox(
            height: 50,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainMenu(),
                      ));
                },
                shape: StadiumBorder(),
                color: AppColor.secondaryColor,
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Main Menu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreen(),
                      ));
                },
                shape: StadiumBorder(),
                color: AppColor.secondaryColor,
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Play Again",
                  style: TextStyle(color: Colors.white),
                ),
              ),

            ],
          )




        ],),
    );
  }
}
