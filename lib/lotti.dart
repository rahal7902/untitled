import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Lotttiii(),);
    }
  ));
}

class Lotttiii extends StatefulWidget{
  @override
  State<Lotttiii> createState() => _LotttiiiState();
}

class _LotttiiiState extends State<Lotttiii> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Animation"),),
    body: ListView(
      children: [
        Lottie.asset("assets/animationss/Animation - 1697434960228.json"),
        Lottie.network("https://lottie.host/c919088c-28cf-479e-9f48-31e4def48f5c/Fzgyfr4Ezd.json"),
        Lottie.network("https://lottie.host/6c71f193-8667-4551-87ca-7e8d0aefaa12/cbbszkJTHX.json")
      ],
    ),
  );
  }
}