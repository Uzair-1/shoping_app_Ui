import 'package:flutter/material.dart';
import 'package:shoppingappui/Screens/Into_screen.dart';
class buy_screen9 extends StatelessWidget {
  const buy_screen9({Key? key}) : super(key: key);

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
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color:Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Order",style: TextStyle(fontSize: 20,color: Colors.black),),
                    SizedBox(width: 50,),
                    Text("#399123",style: TextStyle(fontSize: 20,color: Colors.black),),
                    Icon(Icons.keyboard_arrow_down),
                    Divider(height: 3,color:Colors.black12,),
                    Row(
                      children: [
                        Text("#399123",style: TextStyle(fontSize: 18,color: Colors.black26),),
                      ],
                    ),

                  ],

                )
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color:Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Order",style: TextStyle(fontSize: 20,color: Colors.black),),
                    SizedBox(width: 50,),
                    Text("#557123",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ],

                )
            ),
          ),
        ],
      ),
    ));
  }
}
