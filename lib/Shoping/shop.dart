import 'package:flutter/material.dart';
import 'package:shoppingappui/Shoping/buy2.dart';

//import '../Components/bottombar.dart';
import '../Components/fruit_card,.dart';
import '../Screens/home.dart';
import '../Screens/home_Screen.dart';
import '../Screens/notification.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text('Shop',style: TextStyle(color: Colors.yellow,fontSize: 20,),),
          centerTitle: true,
          leading: InkWell(
            onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> home()),);
            },
            child: CircleAvatar(
              child: Icon(Icons.arrow_back,color: Colors.yellow,size: 20,),
              backgroundColor: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          actions: [
           Padding(padding: EdgeInsets.all(12.0),
           child:  OutlinedButton(
             onPressed: () {},
             child: Center(
               child: Icon(Icons.search,color: Colors.yellow,),
             ),
             style: OutlinedButton.styleFrom(
               shape: CircleBorder(), // padding: EdgeInsets.all(24),
             ),
           ),
           ),
        ]
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(
            child: Card(
            elevation: 10,
            shadowColor: Colors.black,
            color: Colors.white,
            child: SizedBox(
            width: 200,
            height: 196,
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            children: [
            CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            child:  ClipOval(
            child:  Image.asset("assets/images/screen2.png",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
            ),
            ),
            ),
          ])
    )
      ),
    ),

    ),
      SizedBox(height: 5,),
      Text(
          "BestFruitShop "  "\n ",style: TextStyle(fontWeight: FontWeight.w800),),
          Container(
            height: 30,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.keyboard_arrow_up,color: Colors.yellow,),
                Text("1 Kg ",style: TextStyle(color: Colors.yellow),),
                Icon(Icons.keyboard_arrow_down,color: Colors.yellow,),
              ],
            ),
          ),
          SizedBox(height: 17,),
          Text(" \$ 998 US ",style: TextStyle(color: Colors.yellow,fontSize: 25,),),
          SizedBox(height: 40,),
         InkWell(
           onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Buy_Screen2()),);
           },
           borderRadius: BorderRadius.circular(20),
           child:  Container(
             height: 50,
             width: 300,
             decoration: BoxDecoration(
               color: Colors.yellow,
               borderRadius: BorderRadius.circular(20),
             ),
             child: Center(
               child: Text("Add to Cart ",style: TextStyle(fontSize: 20,color: Colors.white),)

             ),
           ),
         ),
          SizedBox(height: 60,),
          // FloatingActionButton(
          //   onPressed: (){
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()),);
          //   },
          //   child: Icon(Icons.add , color: Colors.yellow,size: 45,),
          //   backgroundColor: Colors.white,
          // ),
      ]
    ),
    );




  }
}

