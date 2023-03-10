import 'package:flutter/material.dart';

import '../Screens/home.dart';
import '../Screens/home_Screen.dart';

class Buy_Screen2 extends StatelessWidget {
  const Buy_Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('Cart',style: TextStyle(color: Colors.yellow,fontSize: 20,),),
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
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Center(
                      child: Icon(Icons.search,color: Colors.yellow,),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: CircleBorder(), // padding: EdgeInsets.all(24),
                    ),
                  ),),
            ]
        ),
        body:Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 30, 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/screen2.png"),
                    radius: 30,),
                  Text("1Kg   \$ 998 US"),
                ],
              ),
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Container(
                   height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                    ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                         InkWell(
                           child: Icon(Icons.edit_calendar_sharp,color: Colors.white,),
                           onTap: (){},
                           borderRadius: BorderRadius.circular(20),
                         ),
                      InkWell(
                        child: Icon(Icons.delete_outlined,color: Colors.white,),
                        onTap: (){},
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ],
                   ),
                  ),
               ],
             ),
            SizedBox(height: 120,),
           Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text("Fruit's  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,), ),
                Text("\$ 998   US ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,),),
             ],
           )
           ),
            Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Delivery  ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,),),
                    Text("\$ 7.551 US ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,),),
                  ],
                )
            ),
            Padding(padding: EdgeInsets.fromLTRB(8, 20, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Total   ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                    Text("\$ 8.509 US ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ],
                )
            ),
            const SizedBox(height: 90,),
            InkWell(
              onTap: (){

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
                    child: Text(" Checkout ",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)

                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}
