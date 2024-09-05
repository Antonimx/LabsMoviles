import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pink, Colors.orange])),
        child: Column(
          children: [
            Expanded(child: Image.asset('assets/images/usm.jpg')),
            Text(
              'DAM | Laboratorio',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
