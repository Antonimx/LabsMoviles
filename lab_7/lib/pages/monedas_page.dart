import 'package:clase0509/data/datos.dart';
import 'package:flutter/material.dart';

class MonedasPage extends StatelessWidget {
  const MonedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Valores al día en CLP de diferentes monedas',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
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
                  color: Color(0XFFEEEEEE),
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                leading: Icon(Icons.paid, color: Colors.blue, size: 20),
                title: Text(
                  moneda['codigo'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(moneda['nombre']),
                trailing: Text(moneda['valor'] + ' CLP'),
              ),
            );
          },
        ))
      ],
    );
  }
}
