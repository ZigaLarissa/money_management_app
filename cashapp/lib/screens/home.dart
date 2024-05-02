import 'package:flutter/material.dart';
import 'package:cashapp/widgets/balance.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF0B0742),
        body: Center(
          child: Balance(),
        ));
  }
}
