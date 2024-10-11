import 'package:cabu_cabu_user_mobile/src/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

/// A custom version of ListTile.divideTiles() that allows for divider color customization.
class CustomDivideTiles extends StatelessWidget {
  /// The list of widgets to divide.
  final Iterable<Widget> tiles;

  /// The color of the dividers between the tiles.
  final Color dividerColor;

  /// The spacing between the dividers and tiles.
  final double spacing;

  /// The indent of the divider.
  final double dividerIndent;

  /// Creates a CustomDivideTiles widget that adds dividers between tiles.
  const CustomDivideTiles({
    super.key,
    required this.tiles,
    this.dividerColor = AppColors.opacBlack,
    this.spacing = 0.0,
    this.dividerIndent = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _addDividers(tiles, dividerColor, spacing),
    );
  }

  /// Adds dividers between the tiles.
  List<Widget> _addDividers(
      Iterable<Widget> tiles, Color color, double spacing) {
    final List<Widget> dividedTiles = [];
    for (var i = 0; i < tiles.length; i++) {
      dividedTiles.add(tiles.elementAt(i));
      if (i < tiles.length - 1) {
        dividedTiles.add(
          Padding(
            padding: EdgeInsets.symmetric(vertical: spacing),
            child: Divider(
              color: color,
              thickness: 1.0,
              height: 3.0,
              indent: dividerIndent,
            ),
          ),
        );
      }
    }
    return dividedTiles;
  }
}
