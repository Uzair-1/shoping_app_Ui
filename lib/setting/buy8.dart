import 'package:flutter/material.dart';
import 'package:shoppingappui/Screens/Into_screen.dart';

import 'buy9.dart';
class buy_screen8 extends StatelessWidget {
  const buy_screen8({Key? key}) : super(key: key);

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
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> buy_screen9()),);
           },
           borderRadius: BorderRadius.circular(20),
           child: Padding(padding: EdgeInsets.all(10),
             child:   Container(
                 height: 50,
                 width: 300,
                 decoration: BoxDecoration(
                   color:Colors.black12,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child:Padding(
                     padding: EdgeInsets.all(5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         CircleAvatar(
                           child: Image.asset("assets/images/profile.png"),
                           radius: 40,
                         ),
                         Text("Adimas",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       ],
                     )
                 )
             ),
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
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 89),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Mail",style: TextStyle(fontSize: 20,color: Colors.black26),),
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
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 89),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Contact",style: TextStyle(fontSize: 20,color: Colors.black26),),
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
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 89),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Address",style: TextStyle(fontSize: 20,color: Colors.black26),),
                  ],
                )
            ),
          ),

        ],
      ),
    ));
  }
}



// Padding(
//   padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
//   child: TextFormField(
//     decoration: InputDecoration(
//       hintText: "Adimas",
//       fillColor: Colors.black12,
//       filled: true,
//       prefix: CircleAvatar(
//         child: Image.asset("assets/images/profile.png"),
//         radius: 20,
//       ),
//       // prefixIcon: Icon(
//       //   Icons.lock,
//       //   color: Colors.blueGrey[10],
//       // ),
//       // suffixIcon: const Icon(Icons.visibility,
//       // ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: const BorderSide(color: Color(0xffE4E7EB)),
//         borderRadius: BorderRadius.circular(30),
//       ),
//
//       enabledBorder: OutlineInputBorder(
//         borderSide: const BorderSide(color: Color(0xffE4E7EB)),
//         borderRadius: BorderRadius.circular(30),
//       ),
//     ),
//   ),
// ),