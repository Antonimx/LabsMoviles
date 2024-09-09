import 'package:clase0509/data/datos.dart';
import 'package:flutter/material.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productos.length,
      itemBuilder: (context, index) {
        var producto = productos[index];
        return Container(
          height: 130,
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth, image: AssetImage(producto['imagen']))),
          child: Container(
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
            padding: EdgeInsets.all(5),
            alignment: Alignment.bottomLeft,
            child: Text(
              producto['descripcion'],
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
