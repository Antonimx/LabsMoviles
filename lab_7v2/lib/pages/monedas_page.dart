import 'package:flutter/material.dart';
import 'package:lab_7v2/data/datos.dart';

class MonedasPage extends StatelessWidget {
  const MonedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            'Valores al día en CLP de diferentes monedas',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: monedas.length,
          itemBuilder: (context, index) {
            var moneda = monedas[index];
            return Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [Colors.white, Color(0xFFEEEEEE)])),
              child: ListTile(
                leading: Icon(Icons.paid, color: Colors.blue, size: 30),
                title: Text(
                  moneda['codigo'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(moneda['nombre']),
                trailing: Text('${moneda['valor']} CLP'),
              ),
            );
          },
        ))
      ],
    );
  }
}
