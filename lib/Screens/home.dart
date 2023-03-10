import 'package:flutter/material.dart';

import '../Components/fruit_card,.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0), // here the desired height
          child: AppBar(
    title: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
CircleAvatar(
child: Image.asset("assets/images/apple.png"),
  radius: 20,
),
CircleAvatar(
child: Image.asset("assets/images/profile.png"),
radius: 20,
),

],
),
backgroundColor: Colors.white,
          )
      ),
      body:Column(
        children:<Widget> [
          SizedBox(height: 75,
            child:  Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50, vertical: 20),
                child: InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      fillColor: Colors.transparent,
                      filled: true,
                      suffixIcon: const Icon(Icons.search,  color: Colors.yellow,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                )
            ),
          ),
          SizedBox(height: 1,),
         Expanded(
           flex:2,
           child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(
               padding: EdgeInsets.fromLTRB(5, 0, 0,0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                SizedBox(height: 1,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),

                      ],
                    ),
                  ),

              ],
            ),
         ),
            Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 0,0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Seller ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                  SizedBox(height: 1,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),
                        FruitCard(),

                      ],
                    ),
                  ),

                ],
              ),
            )

           ],
         ),
         ),
        ],
      ),
     ),
    );
  }
}

