import 'package:flutter/material.dart';
import 'package:shoppingappui/Screens/home.dart';
import 'package:shoppingappui/Screens/notification.dart';
import 'package:shoppingappui/setting/setting.dart';
import 'package:shoppingappui/Shoping/shop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentTab=0;
  final List<Widget> screen =[
    home(),
    Notification_Screen(),
    Shop(),
    Setting(),
  ];
  final PageStorageBucket bucket=  PageStorageBucket();
  Widget currentScreen = home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket:bucket ,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add , color: Colors.yellow,size: 45,),
        backgroundColor: Colors.white,
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> home()),);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen=home();
                      currentTab=0;
                    });
                  },
                    minWidth: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled,
                        color: currentTab==0? Colors.yellow : Colors.black26,
                        ),
                      ],
                    )
                  ),
                   SizedBox(width: 50,),
                  MaterialButton(onPressed: (){
                       setState(() {
                         currentScreen = Notification_Screen();
                         currentTab=1;
                       });
                  },
                      minWidth: 50,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_none_sharp,
                            color: currentTab==1? Colors.yellow : Colors.black26,
                          ),
                        ],
                      )
                  ),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen=Shop();
                      currentTab=3;

                    });
                  },
                      minWidth: 50,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart_sharp,
                            color: currentTab==3? Colors.yellow : Colors.black26,
                          ),
                        ],
                      )
                  ),
                  SizedBox(width: 50,),
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = Setting();
                      currentTab=4;
                    });
                  },
                      minWidth: 50,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings,
                            color: currentTab==4? Colors.yellow : Colors.black26,
                          ),
                        ],
                      )
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
