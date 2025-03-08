import 'package:flutter/material.dart';
import '../constants/theme_constants.dart';

class QuickActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const QuickActionButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        side: const BorderSide(color: Colors.black, width: 1),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
      ),
      child: Text(
        text,
        style: ThemeConstants.buttonTextStyle,
      ),
    );
  }
}