import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/loginpage.dart';


class Signuppage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>Signupstate();

}
class Signupstate extends State<Signuppage>{
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(leading: BackButton(),
       title: Text("Signup"),),
     body: Container(decoration:
     BoxDecoration(image: DecorationImage(
         image: NetworkImage("https://as2.ftcdn.net/v2/jpg/04/44/54/37/1000_F_444543796_ToiOrJDAmBnbyFaUUm7GbTiDHECjWpwg.jpg"),fit: BoxFit.fill)),
       child: Column(
         children: [
           SizedBox(height: 10,),
       Text("ZAM ZAM",style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic,color: Colors.green),),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.only(left: 40,right: 40),
             child: TextField(
                 decoration: InputDecoration(
                 hintText: "Full name",prefixIcon: Icon(Icons.person),
                 labelText:"Full name",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(9.0)

                 ) )
             ),
           ),

           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 40,right: 40),
             child: TextField(decoration: InputDecoration(
               prefixIcon: Icon(Icons.person),hintText: "username",labelText: "username",
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(9.0))
             ),),
           ),

           SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: TextField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.mobile_friendly),hintText: "mobiile",labelText: "mobile",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(9.0))
            ),),
          ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 40,right: 40),
             child: TextField(
               obscureText: showpass,
               obscuringCharacter: "*",
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.ac_unit),
                 suffixIcon:IconButton(onPressed: (){
                   setState(() {
                     if (showpass){
                       showpass=false;
                     }
                     else {
                       showpass = true;
                     }
                   });
                 },
                     icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
                 hintText: "password",labelText: "password",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(9.0))
             ),),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 40,right: 40),
             child: TextField(
               obscureText: showpass,
               obscuringCharacter: "*",
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.ac_unit),
                 suffixIcon: IconButton(onPressed: (){
                   setState(() {
                     if(showpass){
                       showpass=false;
                     }
                     else{
                       showpass=true;
                     }
                   });
                 },
                 icon:Icon(showpass==true? Icons.visibility_off:Icons.visibility),),
                   hintText: "Confirm password",labelText: "Confirm password",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(9.0))
             ),),
           ),
           SizedBox(height: 20,),
           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
               onPressed: (){}, child: Text("Signup")),
           SizedBox(height: 5,),
           TextButton(style: TextButton.styleFrom(foregroundColor: Colors.lightGreen[700]),
             onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));

             }, child: Text("already have an account? SignIn"),)

         ],
       ),
     ) ,
   );
  }

}