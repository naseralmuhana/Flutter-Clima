import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class TopIconButton extends StatelessWidget {
  TopIconButton({
    this.onPressed,
    required this.icon,
  });

  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          color: kTextButtonColor,
          size: 50.0,
        ),
      ),
    );
  }
}
