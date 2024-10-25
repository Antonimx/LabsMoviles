import 'package:flutter/material.dart';

class TarjetaEditarPage extends StatefulWidget {
  const TarjetaEditarPage({super.key});

  @override
  State<TarjetaEditarPage> createState() => _TarjetaEditarPageState();
}

class _TarjetaEditarPageState extends State<TarjetaEditarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Tarjeta'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
