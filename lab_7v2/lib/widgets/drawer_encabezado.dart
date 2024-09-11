import 'package:flutter/material.dart';

class DrawerEncabezado extends StatelessWidget {
  const DrawerEncabezado({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.all(0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.pink, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/images/usm.jpg'),
            ),
            Text(
              'DAM | Laboratorios',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
