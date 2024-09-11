import 'package:flutter/material.dart';
import 'package:lab_7v2/pages/empresas_bolsas_page.dart';
import 'package:lab_7v2/pages/productos_page.dart';
import 'package:lab_7v2/widgets/drawer_encabezado.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List paginas = [EmpresasBolsasPage(), ProductosPage()];
  int paginaSeleccionada = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Laboratorio 07',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.deepOrange, Colors.orange])),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Color(0xFFEEEEEE),
        child: Column(
          children: [
            DrawerEncabezado(),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(MdiIcons.domain),
              title: Text('Empresas y Bolsas'),
              onTap: () => _navegarDrawer(context, 0),
            ),
            Divider(),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(MdiIcons.packageVariantClosed),
              title: Text('Productos'),
              onTap: () => _navegarDrawer(context, 1),
            ),
            Divider(),
            Spacer(),
            Divider(),
            ListTile(
              tileColor: Colors.white,
              leading: Icon(MdiIcons.arrowRight),
              title: Text('Cerrar Menú'),
              onTap: () => _cerrarDrawer(context),
            ),
          ],
        ),
      ),
      body: paginas[paginaSeleccionada],
    );
  }

  void _cerrarDrawer(BuildContext context) {
    Navigator.pop(context);
  }

  void _navegarDrawer(BuildContext context, int pagina) {
    setState(() {
      paginaSeleccionada = pagina;
    });
    this._cerrarDrawer(context);
  }
}
