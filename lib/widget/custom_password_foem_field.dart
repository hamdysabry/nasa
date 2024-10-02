import 'package:flutter/material.dart';

typedef myValadite = String? Function(String?);

class CustomPasswordFormField extends StatefulWidget {
  String title;
  TextInputType textInputType;
  myValadite Validator;
  TextEditingController controller;

  CustomPasswordFormField({
    super.key,
    required this.title,
    required this.textInputType,
    required this.Validator,
    required this.controller,
  });

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

bool isObscure = true;

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[500]?.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        validator: widget.Validator,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        obscureText: isObscure,
        cursorColor: Color(0xff0E841C),
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure; // Toggle the boolean state
              });
            },
            icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility,
                color: Colors.white),
          ),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          labelText: widget.title,
        ),
      ),
    );
  }
}
