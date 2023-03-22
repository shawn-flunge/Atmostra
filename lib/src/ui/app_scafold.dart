

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
      appBar: AppBar(
        title: const Text(
          'Atmostra'
        ),
      ),
      body: Column(
        children: const [
          Text(
            'Hello'
          ),
        ],
      ),
    );
  }
}
