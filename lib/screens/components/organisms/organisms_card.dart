import 'package:atomic_widget/screens/components/atoms/atomic_text.dart';
import 'package:flutter/material.dart';

class OrganismsCard extends StatelessWidget {
  const OrganismsCard({Key? key, this.text, this.desc}) : super(key: key);
  final String? text;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AtomicText(
                    title: text,
                  ),
                  const SizedBox(height: 20),
                  AtomicText(
                    title: desc,
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}
