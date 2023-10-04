// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(DevicePreview(
//     builder: (context) {
//       return MaterialApp(
//         useInheritedMediaQuery: true,
//         debugShowCheckedModeBanner: false,
//         home: Gridcount(),
//       );
//     }
//   ));
// }
//
// class Gridcount extends StatelessWidget {
//   var img = [
//     "assets/iconss/motherboard.png",
//     "assets/iconss/rahal.jpg",
//     "assets/iconss/zamzam2.jpg",
//     "assets/iconss/meals.png",
//     "assets/iconss/motherboard.png",
//     "assets/iconss/rahal.jpg",
//     "assets/iconss/zamzam2.jpg",
//     "assets/iconss/meals.png",
//     "assets/iconss/motherboard.png",
//     "assets/iconss/rahal.jpg",
//     "assets/iconss/zamzam2.jpg",
//     "assets/iconss/meals.png",
//     "assets/iconss/rahal.jpg",
//     "assets/iconss/zamzam2.jpg",
//     "assets/iconss/meals.png"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Gridcount"),
//         centerTitle: true,
//       ),
//       body: GridView.count(crossAxisCount: 3,
//         children: List.generate(15, (index) {
//           return Card(
//             child: Column(
//               children: [
//                 SizedBox(height: 70,
//                     child: Image.asset(img[index])),
//                 Center(child: Text("mothrboard"),)
//               ],
//             ),
//           );
//         }
//         ),
//       ),
//     );
//   }
// // }
// import 'dart:html';
//
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(DevicePreview(
//       builder: (context) {
//         return MaterialApp(
//           useInheritedMediaQuery: true,
//           debugShowCheckedModeBanner: false,
//           home: Gridview_count(),
//         );
//       }
//   ));
// }
//
// class Gridview_count extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.purple,
//         title: Text("Gridview_Count"),
//         centerTitle: true,
//       ),
//       body: GridView.count(
//         crossAxisCount: 3,
//         children: List.generate(20, (index) {
//           return Card(
//             child: Column(
//               children: [
//                 SizedBox(height: 70,
//                     child: Image.asset("assets/iconss/meals.png")),
//                 Text("kooopppppp")
//               ],
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridcount3(),));
}

class Gridcount3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("gwbded"),),
     body: GridView.count(crossAxisCount: 4,
     children: List.generate(25, (index) {
       return Card(
         child: Column(
           children: [
             SizedBox(height: 200,
             child: Image.asset("assets/iconss/rahal.jpg"),),
             Text("ok aano")
           ],
         ),
       );
     })),
   );
  }
}