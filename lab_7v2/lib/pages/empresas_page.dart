import 'package:flutter/material.dart';
import 'package:lab_7v2/data/constants.dart';
import 'package:lab_7v2/data/datos.dart';

class EmpresasPage extends StatelessWidget {
  const EmpresasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: empresas.length,
      itemBuilder: (context, index) {
        var empresa = empresas[index];
        return ListTile(
          leading: Icon(
            empresa['icono'],
            color: Colors.white,
            size: 30,
          ),
          title: Text(
            '${empresa['nombre']} (${empresa['simbolo']})',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          subtitle: Text(
            empresa['sector'],
            style: TextStyle(color: Colors.white),
          ),
          trailing: Text(
            empresa['mercado'],
            style: TextStyle(color: Colors.white),
          ),
          tileColor: Color(coloresEmpresas[index]),
        );
      },
    );
  }
}
