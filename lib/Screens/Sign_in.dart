import 'package:flutter/material.dart';
import 'package:shoppingappui/Screens/Sign_Up.dart';

import 'home_Screen.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
       // backgroundColor: Colors.white,
        child: Scaffold(
          body: Column(
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [],
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                const Center(
                    child: Text("Sign In",
                      style: TextStyle(fontSize: 24, color: Colors.black,),
                    )
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      fillColor: Colors.transparent,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.blueGrey[10],
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
                ),

                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 10),
                  child: TextFormField(

                    decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.transparent,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blueGrey[10],
                      ),
                      suffixIcon: const Icon(Icons.visibility,
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
                ),
                const SizedBox(height: 5,),
               InkWell(
                 onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(
                       builder: (context) => Sign_up(),
                   ));
                 },
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text("Forget Password?", style: const TextStyle(
                         fontSize: 13, color: Colors.black),),],
                 ),
               ),
                const SizedBox(height: 90,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(),));
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
                        child: Text(" Sign In ",style: TextStyle(fontSize: 20,color: Colors.white),)

                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Center(
                  child: Text('Sign In menu ', style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w700, color: Colors.yellow),)),

              ]
          ),
        ),
    );
  }
}
