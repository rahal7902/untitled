import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
//
// void main(){
//   runApp(MaterialApp(home:Loginpage(),));  \\ void main ozhivakiyath nnammal samplillekk eduthu vechu
// }
class Loginpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LoginState();

}

class LoginState extends State<Loginpage> {
  bool showpass=true;   //nnammal oru showpass nna variablekk  eduthu vekkumnnu
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Login'),),

    body: Container(
      child:Center(
      child: Column(
        children: [
          SizedBox(height: 100,),
          Text('LikecliQs',style: TextStyle(fontSize:30,color: Colors.blue,fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic ),
          ),
       SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: TextField(
            decoration: InputDecoration(
            hintText: 'username',prefixIcon: Icon(Icons.person),
              labelText: 'username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
      )
            ),
          ),
           SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: TextField(
              obscureText: showpass,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'password',
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
                    icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),),
                labelText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),

            ),
          ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.only(right: 250),
             child: TextButton(onPressed: (){}, child:Text('forgotten password')),
           ),
           SizedBox(height: 25,),
          ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent,
              side: BorderSide(width: 1,color: Colors.green)),
              onPressed: (){}, child: Text('  Login  ')),
SizedBox(height: 15,),
          TextButton(onPressed:(){}, child: Text('Not a user? create an account')),
        ],
      ),
    ),
    ),
  );
  }
}
