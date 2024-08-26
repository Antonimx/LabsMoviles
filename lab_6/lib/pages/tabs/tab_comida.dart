import 'package:flutter/material.dart';
import 'package:lab_6/datos/productos.dart';

class TabComida extends StatelessWidget {
  const TabComida({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
      child: ListView.separated(
        separatorBuilder: (_, __) => Divider(),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          var producto = productos[index];
          return ListTile(
            leading: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.orange)),
              padding: EdgeInsets.all(5),
              child: Image(
                  image:
                      AssetImage('assets/images/comida/${producto['imagen']}')),
            ),
          );
        },
      ),
    );
  }
}
