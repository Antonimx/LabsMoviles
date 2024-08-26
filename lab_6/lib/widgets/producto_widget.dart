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
    return ListTile(
      contentPadding: EdgeInsets.all(5),
      //LEADING-IMAGEN
      leading: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.orange),
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image(
              image: AssetImage('assets/images/comida/${producto['imagen']}')),
        ),
      ),

      //TITULO
      title: Text(
        producto['nombre'],
        style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
      ),

      //SUBTITLE & TRAILING
      subtitle: Text(producto['descripcion']),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            MdiIcons.plusBox,
            color: Colors.blue,
            size: 30,
          ),
          Text(
            '\$${producto['precio']}',
            style: TextStyle(color: Colors.deepOrange),
          )
        ],
      ),
    );
  }
}
