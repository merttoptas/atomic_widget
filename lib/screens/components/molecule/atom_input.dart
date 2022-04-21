import 'package:flutter/material.dart';

class AtomInput extends StatelessWidget {
  const AtomInput({Key? key, this.hintText, this.icon}) : super(key: key);
  final String? hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Flexible( child: TextFormField(
      onChanged: (value) {
        print(value);
      },
      style: TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
        hintText: hintText ?? '',
        hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Container(
          margin: const EdgeInsets.only(bottom: 0),
          child: Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            color: Colors.transparent,
          ),
        ),
      ),
    ),);
  }
}