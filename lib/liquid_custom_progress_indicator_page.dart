LiquidCustomProgressIndicator(
value: 0.2 // Defaults to 0.5.
valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right).
shapePath: _buildBoatPath(), // A Path object used to draw the shape of the progress indicator. The size of the progress indicator is created from the bounds of this path.
)