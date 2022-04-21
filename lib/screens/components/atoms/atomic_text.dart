import 'package:flutter/material.dart';

class AtomicText extends StatelessWidget {
  const AtomicText({Key? key, this.title, this.style}) : super(key: key);
  final String? title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(title ?? '',
        style: style ?? Theme.of(context).textTheme.bodyMedium);
  }
}
