import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Staggedgridview(),);
    }
  ));
}

class Staggedgridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Staggeredgrid"),),
     body: SingleChildScrollView(
       child: StaggeredGrid.count(crossAxisCount: 3,
       children: [
         StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1,
             child: Card(color: Colors.cyan,
               child: SizedBox(height: 50,
                   child: Image.asset("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),
               ),

             )
         ),
         StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
             child: Card(color: Colors.pinkAccent,
               child: Image.asset("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),
             )),
         StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
             child: Card(color: Colors.green,
             child: Image.asset("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),)
         ),
         StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
             child: Card(color: Colors.orange,
             child: Image.asset("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),)),
         StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
             child: Card(color: Colors.cyan,
               child:Image.asset("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),
             )
         ),
         StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
             child: Card(color: Colors.pinkAccent,
               child:Center(child: FaIcon(FontAwesomeIcons.amazonPay,size: 100,)),
             )),
         StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2,
             child: Card(color: Colors.green,
               child: Image.asset("assets/iconss/bernard-hermant-nD9yL9ukVlk-unsplash.jpg"),)
         ),
         StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
             child: Card(color: Colors.orange,
               child: Center(child: FaIcon(FontAwesomeIcons.faceAngry,size: 100,color: Colors.greenAccent,))))
       ],
       ),
     ),
   );
  }
}