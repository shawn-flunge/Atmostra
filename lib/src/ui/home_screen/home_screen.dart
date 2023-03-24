


import 'package:atmostra/src/design/color/sky_color_set.dart';
import 'package:atmostra/src/state/planet.dart';
import 'package:atmostra/src/ui/home_screen/widget/background.dart';
import 'package:atmostra/src/ui/home_screen/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int index = 0;
  @override
  Widget build(BuildContext context) {
    final planets = context.watch<Planets>();


    return Stack(
      alignment: Alignment.center,
      children: [
        SkyBackground(
            colors: SkyColorSet.values[index].colors,
            bottom: Alignment.bottomRight
        ),

        const Positioned(

            top: 50,
            // left: 0,
            // right: 0,
            child: TempButton()
        )
      ],
    );
  }
}
