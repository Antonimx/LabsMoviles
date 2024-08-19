import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:lab_3_v2/pages/datos.dart';
import 'package:lab_3_v2/widgets/producto_widget.dart';
import 'package:lab_3_v2/widgets/usuario_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kColorAppBar),
        leading: Icon(MdiIcons.squareRoundedBadgeOutline,
            color: Colors.white, size: 30),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Laboratorio 3',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Desarrollo de Aplicaciones Móviles',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //USUARIOS
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            color: Color(kColorUsuarios),
            child: Text(
              'Usuarios del sistema',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Color(kColorUsuarios),
              child: ListView.separated(
                separatorBuilder: (_, __) => Divider(),
                itemCount: usuarios.length,
                itemBuilder: (context, index) {
                  return UsuarioWidget(user: usuarios[index]);
                },
              ),
            ),
          ),

          //PRODUCTOS
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            color: Color(kColorProductos),
            child: Text(
              'Productos',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              color: Color(kColorProductos),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  var producto = productos[index];
                  return ProductoWidget(producto: producto);
                },
              ),
            ),
          ),

          //PIE DE PAGINA
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            color: Color(kColorPiePagina),
            child: Text('Informática USM Viña del Mar',
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
