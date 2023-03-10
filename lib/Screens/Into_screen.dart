import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shoppingappui/Screens/Sign_in.dart';

class Intro_Screen extends StatelessWidget {
  Intro_Screen({Key? key}) : super(key: key);

  final List<PageViewModel> pages =[
    PageViewModel(
    title: "Best Shop Fruit " ,
  body: "Sell and buy fruit from \n different places ",
     image: Center(
       child: Image.asset("assets/images/screen1.jpg",),
     ),
    ),
    PageViewModel(
      title:"Best Shop Fruit ",
      body: "get fresh and healthy fruit \n for you ",
      image: Center(
        child: Image.asset("assets/images/screen2.png"),
      ),
    ),
    PageViewModel(
      title: "Best Shop Fruit ",
      body: "Oganic fruit that can be  \n enjoyed by everyone ",
      image: Center(
        child: Image.asset("assets/images/screen3.jpg"),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IntroductionScreen(
      pages: pages,
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        color: Colors.black12,
        activeColor: Colors.yellow,
        activeSize: Size.square(15),
      ),
      showDoneButton: true,
      done: Text("Done ", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
      showSkipButton: true,
      skip: Text("Skip ", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
      showNextButton: true,
      next: Center(
        child:  Text("Next ", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
      ),

      onDone: () =>onDone(context),
      ),
    );
  }
  void onDone(context){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const Sign_In(),));
  }
}

