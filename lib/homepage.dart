import 'package:flutter/material.dart';
import 'package:quiz/Answer.dart';
import 'package:quiz/question.dart';
class Homepage extends StatefulWidget {
   Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  int index = 0;
  Restart(){
    index =0 ;
    print(index);
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E432E),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
                Icon(Icons.ac_unit_outlined,size: 50,color: Colors.white),
              Question(index: index,),
              Answer(fun:(){
                index ++ ;
                setState(() {
                });
                print(index);
              } , index: index,
              rst: Restart),

            ],
          ),
        ),
      ),
    );
  }
}
