import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD51E2D),
        leading: Icon(Icons.school, color: Colors.white, size: 30),
        title: Text(
          'DAM - Lab02',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      //BODY
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            //NOMBRE ALUMNO
            Container(
                width: double.infinity,
                color: Color(0xFFDDDDDD),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    Text(
                      'Nombre Alumno',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                )),

            //TITULO UNIVERSDIDAD
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Text(
                    'Universidad Técnica Federico Santa María',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF074469)),
                  ),
                ],
              ),
            ),

            // INDICADORES
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //EMPLAZAMIENTOS
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD51E2D)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF026597)),
                            ),
                          ),
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.account_balance,
                                  color: Color(0xFFD51E2D)),
                              Text('Emplazamientos')
                            ],
                          ))
                        ],
                      )),

                  //CARRERAS
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD51E2D)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              '49',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF026597)),
                            ),
                          ),
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.auto_stories,
                                  color: Color(0xFFD51E2D)),
                              Text('Carreras')
                            ],
                          ))
                        ],
                      )),

                  //ESTUDIANTES
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFD51E2D)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              '22.404',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF026597)),
                            ),
                          ),
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.person, color: Color(0xFFD51E2D)),
                              Text('Estudiantes')
                            ],
                          ))
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
