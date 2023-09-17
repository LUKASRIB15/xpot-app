import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({required this.label, required this.controller, super.key});

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        controller: controller,
        obscureText: label == 'Senha' ? true : false,
        decoration: InputDecoration(
            labelText: label,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    style: BorderStyle.solid,
                    width: 1.5))),
      ),
    );
  }
}
