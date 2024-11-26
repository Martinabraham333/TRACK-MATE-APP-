import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:track_mate/CONSTANTS.dart';

class CustomeIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final VoidCallback? onTap;
  const CustomeIcon(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconSize,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap:  onTap,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
