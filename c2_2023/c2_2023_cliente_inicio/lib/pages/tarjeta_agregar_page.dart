import 'package:flutter/material.dart';

class TarjetaAgregarPage extends StatefulWidget {
  const TarjetaAgregarPage({super.key});

  @override
  State<TarjetaAgregarPage> createState() => _TarjetaAgregarPageState();
}

class _TarjetaAgregarPageState extends State<TarjetaAgregarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Tarjeta'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
