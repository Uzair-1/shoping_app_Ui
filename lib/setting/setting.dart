import 'package:flutter/material.dart';
import 'package:shoppingappui/Screens/Into_screen.dart';

import 'buy8.dart';
class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Intro_Screen()),);
                },
                child: Center(
                  child: Icon(Icons.arrow_back,color: Colors.yellow,),
                ),
                style: OutlinedButton.styleFrom(
                  shape: CircleBorder(), // padding: EdgeInsets.all(24),
                ),
              ),
              SizedBox(width: 30,),
              Text("Setting",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.yellow,fontSize: 20),),  SizedBox(width: 30,),
              InkWell(
                child: Icon(Icons.search,color: Colors.yellow,),
                onTap: (){},
                borderRadius: BorderRadius.circular(20),
              ),
            ],
          ),
          const SizedBox(height: 90,),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> buy_screen8()),);
            },
            borderRadius: BorderRadius.circular(20),
            child:  Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color:Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(" Your Account ",style: TextStyle(fontSize: 20,color: Colors.black,),)

              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){

            },
            borderRadius: BorderRadius.circular(20),
            child:  Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color:Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(" Your Order ",style: TextStyle(fontSize: 20,color: Colors.black,),)

              ),
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
            },
            borderRadius: BorderRadius.circular(20),
            child:  Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(" Sign Out ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)

              ),
            ),
          ),
        ],
      ),
    ));
  }
}
