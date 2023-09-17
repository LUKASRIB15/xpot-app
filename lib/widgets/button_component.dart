import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {required this.onTap,
      required this.label,
      required this.bgColor,
      required this.textColor,
      this.border,
      super.key});

  final Function() onTap;
  final String label;
  final Color bgColor;
  final Color textColor;
  final Color? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
              color: border ?? bgColor, style: BorderStyle.solid, width: 2),
          borderRadius: BorderRadius.circular(32)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              padding: const EdgeInsets.symmetric(vertical: 16)),
          onPressed: onTap,
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}
