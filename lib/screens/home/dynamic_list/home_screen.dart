import 'package:flutter/material.dart';

import '../../components/organisms/atom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

AppBar _customAppBar(String text) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 5,
      title: Text(
        text,
      ),
      centerTitle: true,
    );

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(
        "Atomic Widget List Page",
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25.0, right: 25.0, top: 10, bottom: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return AtomCard(
              text: "Atom Card $index",
              desc: "Atom Card Subtitle $index",
            );
          },
        ),
      ),
    );
  }
}
