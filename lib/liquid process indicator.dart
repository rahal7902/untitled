import 'package:flutter/material.dart';

import 'liquid_circular_progress_indicator_page.dart';
// import 'liquid_custom_progress_indicator_page.dart';
import 'liquid_linear_progress_indicator_page.dart';

void main() => runApp(MaterialApp(home: Example()));

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Progress Indicator Examples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(
              child: Text("Circular"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCircularProgressIndicatorPage(),
                ),
              ),
            ),
            TextButton(
              child: Text("Linear"),
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidLinearProgressIndicatorPage (),
                ),
              ),
            ),
            // TextButton(
            //   child: Text("Custom"),
            //   style: ButtonStyle(
            //     backgroundColor:
            //     MaterialStateProperty.all<Color>(Colors.grey.shade300),
            //   ),
            //   onPressed: () => Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (_) => LiquidCustomProgressIndicatorPage(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

// class LiquidCustomProgressIndicatorPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     LiquidCustomProgressIndicator(
//         value: 0.2 // Defaults to 0.5.
//         valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
//     backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
//     direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right).
//     shapePath: _buildBoatPath(), // A Path object used to draw the shape of the progress indicator. The size of the progress indicator is created from the bounds of this path.
//     )
//   }
class LiquidLinearProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => LiquidLinearProgressIndicator(
      value: 0.25, // Defaults to 0.5.
      valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
      backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
      borderColor: Colors.red,
      borderWidth: 5.0,
      borderRadius: 12.0,
      direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
      center: Text("Loading..."),
    );
}

class LiquidCircularProgressIndicatorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => LiquidCircularProgressIndicator(
      value: 0.25, // Defaults to 0.5.
      valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
      backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
      borderColor: Colors.red,
      borderWidth: 5.0,
      direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
      center: Text("Loading..."),
    );
}