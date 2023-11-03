LiquidLinearProgressIndicator(
value: 0.25, // Defaults to 0.5.
valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
borderColor: Colors.red,
borderWidth: 5.0,
borderRadius: 12.0,
direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
center: Text("Loading..."),
);