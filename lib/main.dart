import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/Answer.dart';
import 'package:quiz/Quizprovider.dart';
import 'package:quiz/homepage.dart';
void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => Quizprovider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  GlobalKey<FormState> formkey= GlobalKey<FormState>() ;
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage()
    );
  }
}