

import 'package:atmostra/src/ui/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class AtmostraScaffold extends StatefulWidget {
  const AtmostraScaffold({Key? key}) : super(key: key);

  @override
  State<AtmostraScaffold> createState() => _AtmostraScaffoldState();
}

class _AtmostraScaffoldState extends State<AtmostraScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: const [
          HomeScreen()
        ],
      ),
    );
  }
}
