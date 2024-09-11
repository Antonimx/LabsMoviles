import 'package:flutter/material.dart';
import 'package:lab_7v2/data/datos.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productos.length,
      itemBuilder: (context, index) {
        var producto = productos[index];
        return Container(
          margin: EdgeInsets.all(8),
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(producto['imagen']), fit: BoxFit.fitWidth),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 170),
            color: Color(0xBB222222),
            padding: EdgeInsets.all(5),
            alignment: Alignment.bottomLeft,
            child: Text(
              producto['nombre'],
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
