import 'package:clase0509/pages/empresas_page.dart';
import 'package:clase0509/pages/monedas_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmpresasBolsasPage extends StatefulWidget {
  const EmpresasBolsasPage({super.key});

  @override
  State<EmpresasBolsasPage> createState() => _EmpresasBolsasPageState();
}

class _EmpresasBolsasPageState extends State<EmpresasBolsasPage> {
  List paginas = [EmpresasPage(), MonedasPage()];
  int paginaSeleccionada = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paginas[paginaSeleccionada],
      bottomNavigationBar: NavigationBar(
        selectedIndex: paginaSeleccionada,
        destinations: [
          NavigationDestination(icon: Icon(MdiIcons.domain), label: 'Empresas'),
          NavigationDestination(
              icon: Icon(MdiIcons.cashMultiple), label: 'Monedas'),
        ],
        onDestinationSelected: (pagina) {
          setState(() {
            paginaSeleccionada = pagina;
          });
        },
      ),
    );
  }
}
