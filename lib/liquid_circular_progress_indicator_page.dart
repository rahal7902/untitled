LiquidCircularProgressIndicator(
value: 0.25, // Defaults to 0.5.
valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
borderColor: Colors.red,
borderWidth: 5.0,
direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
center: Text("Loading..."),
);