import 'package:flutter/material.dart';
import 'package:shoppingappui/Shoping/shop.dart';
class FruitCard extends StatelessWidget {
  const FruitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      splashColor: Colors.teal,
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Shop() ),);
      },
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
                          ), //CircleAvatar
                        ), //CircleAvatar
                        const SizedBox(
                          height: 2,
                        ), //SizedBox
                        Text(
                          "BestFruitShop "  "\n" "       \$ 90 US",style: TextStyle(fontWeight: FontWeight.w800),),
                      ])
              )
          )
      ),
    );
  }
}
