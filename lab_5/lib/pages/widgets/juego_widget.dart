import 'package:flutter/material.dart';

class JuegoWidget extends StatelessWidget {
  const JuegoWidget({
    super.key,
    required this.juego,
  });

  final dynamic juego;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          //IMAGEN
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(juego['imagen']),
              fit: BoxFit.cover,
            ),
          ),

          //NOMBRE
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Text(
              juego['nombre'],
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),

          //PRECIO+BOTON
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 50),
                child: Text(
                  'Precio: ${juego['precio']}',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text('Comprar')),
            ],
          )
        ],
      ),
    );
  }
}
