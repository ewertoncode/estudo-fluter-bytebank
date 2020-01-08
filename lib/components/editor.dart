import 'package:flutter/material.dart';
class Editor extends StatelessWidget {

  final TextEditingController controlador;
  final String label;
  final String placeholder;
  final IconData icon;

  Editor({this.controlador, this.label, this.placeholder, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controlador,
            style: TextStyle(
              fontSize: 24.0
            ),
            decoration: InputDecoration(
              icon: icon != null ? Icon(icon) : null,
              labelText: label,
              hintText: placeholder
            ),
            keyboardType: TextInputType.number,
            maxLength: 5
          ),
        );
  }

}