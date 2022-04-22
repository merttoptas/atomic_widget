import 'package:atomic_widget/screens/components/atoms/atomic_text.dart';
import 'package:atomic_widget/screens/home/dynamic_list/home_screen.dart';
import 'package:flutter/material.dart';

import '../../components/atoms/atomic_button.dart';
import '../../components/molecule/molecule_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

AppBar _customAppBar(String text) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 5,
      title: Text(
        text,
      ),
      centerTitle: true,
    );

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(
        "Atomic Widget Login Page",
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 25.0, right: 25.0, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const AtomicText(title: "Login Page"),
              const SizedBox(height: 50),
              const MoleculeInput(hintText: "Email", icon: Icons.email),
              const SizedBox(height: 20),
              const MoleculeInput(hintText: "Password", icon: Icons.lock),
              const SizedBox(height: 20),
              AtomButton(
                  title: "Login",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
