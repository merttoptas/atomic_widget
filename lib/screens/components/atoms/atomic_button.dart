import 'package:flutter/material.dart';

import 'atomic_text.dart';

class AtomButton extends StatelessWidget {
  const AtomButton({Key? key, this.onPressed, this.primaryColor, this.title})
      : super(key: key);
  final String? title;
  final Color? primaryColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(200, 50), primary: primaryColor),
        onPressed: onPressed,
        child: AtomicText(title: title ?? ''));
  }
}
