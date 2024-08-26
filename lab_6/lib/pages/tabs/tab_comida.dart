import 'package:flutter/material.dart';
import 'package:lab_6/datos/productos.dart';
import 'package:lab_6/widgets/producto_widget.dart';

class TabComida extends StatelessWidget {
  const TabComida({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),

      //ListView
      child: ListView.separated(
        separatorBuilder: (_, __) => Divider(),
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ProductoWidget(producto: productos[index]);
        },
      ),
    );
  }
}
