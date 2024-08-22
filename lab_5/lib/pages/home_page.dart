import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:lab_5/pages/datos.dart';
import 'package:lab_5/pages/widgets/juego_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          MdiIcons.gamepadSquare,
          size: 40,
          color: Colors.deepOrange,
        ),
        title: Text.rich(
          TextSpan(
            style: TextStyle(color: Colors.blue),
            children: [
              TextSpan(text: 'La Tiendita '),
              TextSpan(
                  text: 'USM', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //TITULO
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Catálogo de Juegos  ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Icon(
                    MdiIcons.gamepadVariant,
                    color: Colors.white,
                  )
                ],
              ),
            ),

            //LISTA DE JUEGOS
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: juegos.length,
                itemBuilder: (context, index) {
                  return JuegoWidget(juego: juegos[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
