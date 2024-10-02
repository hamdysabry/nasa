import 'package:flutter/material.dart';

typedef myValadite = String? Function(String?);

class CustomFormField extends StatelessWidget {
  String title;
  TextInputType textInputType;
  bool isSecure;
  bool enabled = true;
  myValadite Validator;
  TextEditingController controller;

  CustomFormField({
    super.key,
    required this.title,
    required this.textInputType,
    this.isSecure = false,
    this.enabled = true,
    required this.Validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[500]?.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        validator: Validator,
        controller: controller,
        keyboardType: textInputType,
        obscureText: isSecure,
        cursorColor: Color(0xff0E841C),
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          hintStyle: const TextStyle(color: Colors.black),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: title,
        ),
      ),
    );
  }
}
