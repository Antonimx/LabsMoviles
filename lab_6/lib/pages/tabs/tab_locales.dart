import 'package:flutter/material.dart';
import 'package:lab_6/datos/locales.dart';
import 'package:lab_6/widgets/local_widget.dart';

class TabLocales extends StatelessWidget {
  const TabLocales({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //TITULO
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Nuestros Locales',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),

            //CONTENIDO
            Expanded(
              child: ListView.builder(
                itemCount: locales.length,
                itemBuilder: (context, index) {
                  return LocalWidget(local: locales[index]);
                },
              ),
            )
          ],
        ));
  }
}
