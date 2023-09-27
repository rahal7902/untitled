import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hiii.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: loginvalidate(),
          )));
}

class loginvalidate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => loginvalidatestate();
}

class loginvalidatestate extends State<loginvalidate> {
  bool showpass = true;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/iconss/motherboard.png"),
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "username",
                      prefixIcon: Icon(Icons.person_2),
                      labelText: "username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      )),
                  validator: (username) {
                    if (username!.isEmpty ||
                        !username.contains("@") ||
                        !username.contains("."))
                      return "enter valid username";
                    else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: 'password',
                        prefixIcon: Icon(Icons.ac_unit),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        labelText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    validator: (password) {
                      if (password!.isEmpty ||
                          password.length<8)
                        return "enter valid password";
                      else {
                        return null;
                      }
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      side: BorderSide(width: 1, color: Colors.green)),
                  onPressed: () {
                    final valid=formkey.currentState!.validate();
                    if(valid){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                    }
                  },
                  child: Text('  Login  ')),
              SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Not a user? create an account')),
            ],
          ),
        ),
      ),
    );
  }
}
