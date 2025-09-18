import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  String text;
  Color? color;
  final VoidCallback onClick;
  BuildButton({
    super.key,
    required this.text,
    this.color,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ??  Colors.grey[850],
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(24),
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
