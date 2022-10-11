import 'text_result_widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  Color mainColor = Color(0xFF252c4a);
  final String gender ;
  final double result ;
  final int age ;
  final double  weight;
  final  double       height;
  ResultScreen(
      {
        required this.height,
        required this.result,
        required this.weight,
        required this.age ,
        required this.gender

      }
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor.withOpacity(0.4),
        appBar: AppBar(
          title: const Text( 'Result'),
          backgroundColor: mainColor.withOpacity(0.8),
          elevation: 0,
        ),
        body:  Container(
          alignment: Alignment.center,
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              TextResultWidget( text1: 'Gender' ,  text2: gender),
              TextResultWidget(text1: 'Age' ,text2: age),
              TextResultWidget(text1: 'Height' ,text2:height.round() ),
              TextResultWidget(text1:  'Weight'  ,text2:  weight.round()),
              SizedBox(
                height: 40,
              ),
              TextResultWidget(text1: 'Result' , text2:result.round()  ),

            ],
          ),
        )
    );
  }
}
