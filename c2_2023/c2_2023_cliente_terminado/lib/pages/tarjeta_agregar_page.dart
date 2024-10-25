import 'package:c1_2023_cliente_test/services/tarjetas_service.dart';
import 'package:flutter/material.dart';

class TarjetaAgregarPage extends StatefulWidget {
  const TarjetaAgregarPage({super.key});

  @override
  State<TarjetaAgregarPage> createState() => _TarjetaAgregarPageState();
}

class _TarjetaAgregarPageState extends State<TarjetaAgregarPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController propietarioCtrl = TextEditingController();
  TextEditingController numeroCtrl = TextEditingController();
  TextEditingController validoHastaCtrl = TextEditingController();
  TextEditingController cupoCtrl = TextEditingController();
  TextEditingController montoUtilizadoCtrl = TextEditingController();

  String tarjetaSeleccionada = 'Visa';

  String? propietarioError;
  String? marcaError;
  String? numeroError;
  String? validoHastaError;
  String? cupoError;
  String? montoUtilizadoError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Tarjeta'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              //propietario
              TextFormField(
                controller: propietarioCtrl,
                decoration: InputDecoration(labelText: 'Propietario', errorText: propietarioError),
              ),
              //marca
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Marca de la Tarjeta de Crédito',
                  errorText: marcaError,
                ),
                onChanged: (tarjeta) {
                  tarjetaSeleccionada = tarjeta ?? tarjetaSeleccionada;
                },
                value: tarjetaSeleccionada,
                items: [
                  DropdownMenuItem<String>(
                    child: Text('Visa'),
                    value: 'Visa',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('MasterCard'),
                    value: 'MasterCard',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('American Express'),
                    value: 'American Express',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Diners Club'),
                    value: 'Diners Club',
                  ),
                ],
              ),
              //numero
              TextFormField(
                controller: numeroCtrl,
                decoration: InputDecoration(labelText: 'Número de Tarjeta', errorText: numeroError),
                keyboardType: TextInputType.number,
              ),

              //valido_hasta
              TextFormField(
                controller: validoHastaCtrl,
                decoration: InputDecoration(labelText: 'Válido Hasta', errorText: validoHastaError),
              ),
              //cupo
              TextFormField(
                controller: cupoCtrl,
                decoration: InputDecoration(labelText: 'Cupo', errorText: cupoError),
                keyboardType: TextInputType.number,
              ),
              //monto_utilizado
              TextFormField(
                controller: montoUtilizadoCtrl,
                decoration: InputDecoration(labelText: 'Monto Utilizado', errorText: montoUtilizadoError),
                keyboardType: TextInputType.number,
              ),
              //boton
              Container(
                margin: EdgeInsets.only(top: 20),
                child: FilledButton(
                  child: Text('Agregar Tarjeta'),
                  onPressed: () async {
                    var respuesta = await TarjetasService().agregar(
                      propietarioCtrl.text.trim(),
                      tarjetaSeleccionada,
                      numeroCtrl.text.trim(),
                      validoHastaCtrl.text.trim(),
                      int.tryParse(cupoCtrl.text.trim()) ?? -1,
                      int.tryParse(montoUtilizadoCtrl.text.trim()) ?? -1,
                    );

                    if (respuesta['message'] != null) {
                      //mostrar mensajes de error
                      var errores = respuesta['errors'];
                      setState(() {
                        propietarioError = errores['propietario'] != null ? errores['propietario'][0] : null;
                        marcaError = errores['marca'] != null ? errores['marca'][0] : null;
                        numeroError = errores['numero'] != null ? errores['numero'][0] : null;
                        validoHastaError = errores['valido_hasta'] != null ? errores['valido_hasta'][0] : null;
                        cupoError = errores['cupo'] != null ? errores['cupo'][0] : null;
                        montoUtilizadoError = errores['monto_utilizado'] != null ? errores['monto_utilizado'][0] : null;
                      });
                    } else {
                      //todo ok, volver a lista de tarjetas
                      Navigator.pop(context);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
