import 'package:clase0509/data/datos.dart';
import 'package:flutter/material.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) {
            var producto = productos[index];
            return Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(producto['imagen']))),
              child: Text(producto['descripcion']),
            );
          },
        ),
      ),
    );
  }
}
