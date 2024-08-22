import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController clpCtrl = new TextEditingController();
  TextEditingController usdCtrl = new TextEditingController();

  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio Clase 3'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          //TITULO
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.orange,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.monetization_on,
                  color: Colors.white,
                ),
                Text(
                  'Convertidor USD a CLP',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),

          //FORM
          Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: clpCtrl,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration:
                          InputDecoration(labelText: 'Valor CLP de 1 USD'),
                    ),
                    TextFormField(
                      controller: usdCtrl,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(labelText: 'Monto USD'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //BOTON
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 90, 40, 170),
                  foregroundColor: Colors.white),
              child: Text('Calcular CLP'),
              onPressed: () {
                int clp = int.tryParse(clpCtrl.text) ?? 0;
                int usd = int.tryParse(usdCtrl.text) ?? 0;
                this.resultado = clp * usd;
                setState(() {});
              },
            ),
          ),

          //RESULTADO
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Resultado: ${this.resultado} CLP'),
          )
        ],
      ),
    );
  }
}
