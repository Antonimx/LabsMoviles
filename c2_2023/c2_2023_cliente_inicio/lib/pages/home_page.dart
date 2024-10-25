import 'package:c1_2023_cliente_test/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(MdiIcons.plus),
        backgroundColor: Color(kSecondary),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Color(kPrimary),
      appBar: AppBar(
        leading: Icon(MdiIcons.creditCardMultiple),
        title: Text('Tarjetas Emitidas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(5),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
