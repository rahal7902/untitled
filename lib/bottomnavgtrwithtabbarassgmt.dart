import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Assgnmtbotmtabbar(),);
    }
  ));
}

class Assgnmtbotmtabbar extends StatefulWidget{
  @override
  State<Assgnmtbotmtabbar> createState() => _AssgnmtbotmtabbarState();
}

class _AssgnmtbotmtabbarState extends State<Assgnmtbotmtabbar> {
  var rahal=[
    Text("home"),
    lunches(),
    Text("cart"),
    Text("account"),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       
       appBar: AppBar(title: Text("FOOD CART"),),
       bottomNavigationBar: BottomNavigationBar(
         unselectedItemColor: Colors.cyan,
         selectedItemColor: Colors.black,
         backgroundColor: Colors.white,
         currentIndex: index,
         type: BottomNavigationBarType.fixed ,
         onTap: (tapindex){
           setState(() {
             index=tapindex;
           });
         },
         items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.food_bank_outlined),label: "Lunches"),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
         BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined),label: "Account")
       ],),
       body: Center (child: rahal[index],),
     ),
   );
  }
}



class lunches extends StatefulWidget {  @override
State<lunches> createState() => _lunchesState();
}

class _lunchesState extends State<lunches> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:
    Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Text("Lunches"),
            Text("Orders")
          ],

          ),
        ),
      body: TabBarView(
        children: [
          ListView(
            children: [
              Container(
                child: ListTile(
                  leading: Text("1"),
                  trailing: Text("MONDAY"),
                ),
              )
            ],
          )
        ],
      )
    )
    );

  }}
