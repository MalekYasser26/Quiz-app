import 'package:flutter/material.dart';
class Answer extends StatefulWidget {
   Answer({Key? key, required this.fun,required this.index,required this.rst}) : super(key: key);
final fun;
final index;
final rst;
  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
int score = 0 ;

List ans = [
  [{'answer':'Black','score':10}, {'answer':'yellow','score':0},{'answer':'gr','score':0}],
  [{'answer':'sa','score':10}, {'answer':'fgs','score':0},],
  [{'answer':'bb','score':10}, {'answer':'ee','score':0},{'answer':'gr','score':0}],
];

  @override
  Widget build(BuildContext context) {
    if (widget.index<=2){
    return Column(
        children: [
          // item => elements of ans
          // map allows me to acess elemnts of ans
          // ... allows me to get the elemnts of the inside list
         ...ans[widget.index].map((item){
           return  GestureDetector(
             onTap: () {
               score += item['score'] as int ;
               setState(() {
               });
               print(score);
               widget.fun();
             },
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 alignment: Alignment.center,
                 decoration: BoxDecoration(color: Color(0xFFA7D129),
                     borderRadius: BorderRadius.circular(15)),
                 width: double.infinity,
                 margin: EdgeInsets.all(15),
                 height: 50,
                 child: Text(item['answer']),
               ),
             ),
           );
         })
        ],
    );
    } else {
      return Container(
        height: 400,
        width: 400,
        child: Column(
          children: [
            Text("Score is $score",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
            SizedBox(height: 100,),

            GestureDetector(
              onTap: () {
                widget.rst();
                score =0;
                setState(() {
                });
              },
                child: Text("Restart quiz ?",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold))),

          ],
        ),);
    };
  }
}
