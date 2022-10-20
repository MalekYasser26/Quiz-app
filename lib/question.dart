import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  int index ;
   Question({Key? key, required this.index}) : super(key: key);

  List x = ['What is your fav color ',
      'What is your fav book',
  'Who is your fav player'];
  @override
  Widget build(BuildContext context) {
    if (index<=2) {
      return Text(x[index]
        , style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),);
    } else {
      return Container(
        height: 100,
        width: 100,
        );

    }
  }
}
