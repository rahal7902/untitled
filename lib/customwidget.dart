import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Custumwiget extends StatelessWidget {
  final Color? bgcolorsss;
  final Image? photosss;
  final Text? namesss;
  VoidCallback onpresss;

  Custumwiget(
      {this.bgcolorsss, this.namesss, this.photosss, required this.onpresss});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: bgcolorsss,
        child: ListTile(
          leading: photosss,
          title: namesss,
          onTap: onpresss,
        ),
      ),
    );
  }
}
