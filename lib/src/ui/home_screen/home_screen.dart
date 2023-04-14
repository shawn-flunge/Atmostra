


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


  @override
  Widget build(BuildContext context) {
    final planets = context.watch<Planets>();

    return Stack(
      alignment: Alignment.center,
      children: [
        SkyBackground(
          planet: planets.selected!,
        ),

        const Positioned(

            top: 50,
            // left: 0,
            // right: 0,
            child: TempButton()
        ),
        Positioned(
          top: 500,
          child: Column(
            children: [
              MaterialButton(
                color: Colors.red,
                onPressed: (){
                  planets.getWeatherByName('Athens');
                },
              ),
              MaterialButton(
                color: Colors.red,
                onPressed: (){
                  planets.getWeatherByName('seoul');
                },
              ),
            ],
          ),
        ),
        const Positioned(
          top: 150,
          child: Temp()
        )
      ],
    );
  }
}

class Temp extends StatelessWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: const BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(6))
      ),
      child: Consumer<Planets>(
          builder: (context, planets, child){
            if(planets.list.isEmpty) return const Text('empty');

            return Column(
              children: List.generate(planets.list.length, (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                    planets.list[index].name
                ),
              )),
            );
          }
      ),
    );
  }
}
