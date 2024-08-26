import 'package:flutter/material.dart';

class LocalWidget extends StatelessWidget {
  const LocalWidget({
    super.key,
    required this.local,
  });

  final dynamic local;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.symmetric(vertical: 5),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/locales/${local['imagen']}'),
          ),
          borderRadius: BorderRadius.circular(10)),

      //Contenido
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            local['nombre'],
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            local['direccion'],
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
