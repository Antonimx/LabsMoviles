import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4da5d3),
        leading: Icon(
          MdiIcons.squareRoundedBadgeOutline,
          color: Colors.white,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Laboratorio 3', style: TextStyle(color: Colors.white)),
            Text('Desarrollo de Aplicaciones Móviles',
                style: TextStyle(color: Colors.white, fontSize: 14))
          ],
        ),
      ),
    );
  }
}
