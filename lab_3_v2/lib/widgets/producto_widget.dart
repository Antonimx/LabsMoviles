import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class ProductoWidget extends StatelessWidget {
  const ProductoWidget({
    super.key,
    required this.producto,
  });

  final dynamic producto;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Icon(MdiIcons.cellphone, color: Colors.white, size: 40),
            ),
            Text(
              producto['marca'],
              style: TextStyle(color: Colors.white),
            ),
            Text(
              producto['modelo'],
              style: TextStyle(color: Colors.white),
            ),
            Text(
              producto['so'],
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
