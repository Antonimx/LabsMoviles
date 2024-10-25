import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:intl/intl.dart';

class TarjetaTile extends StatelessWidget {
  const TarjetaTile({
    super.key,
    required this.tarjeta,
  });

  final dynamic tarjeta;

  @override
  Widget build(BuildContext context) {
    TextStyle estiloMarca = TextStyle(fontSize: 18);
    TextStyle estiloNumero = TextStyle(fontSize: 16);
    TextStyle estiloFechas = TextStyle(fontSize: 12);

    int disponible = tarjeta['cupo'] - tarjeta['monto_utilizado'];

    NumberFormat _formatoMoneda = NumberFormat('#,##0', 'es_ES');
    DateFormat _formatoFecha = DateFormat('dd-MM-yyyy');

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF4F5FC)),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Color(int.parse('0x99${tarjeta['color']}')),
            Color(int.parse('0x33${tarjeta['color']}')),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(tarjeta['marca'], style: estiloMarca),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(child: Icon(MdiIcons.integratedCircuitChip, size: 35)),
                Container(child: Icon(MdiIcons.wifi, size: 35)),
                Spacer(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Disponible (CLP):'),
                      Text(_formatoMoneda.format(disponible)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(_formateaNumero(tarjeta['numero']), style: estiloNumero),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            child: Text(tarjeta['propietario'].toString().toUpperCase()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Valido Hasta: ${tarjeta['valido_hasta']}', style: estiloFechas),
                  Text('Emitida: ${_formatoFecha.format(DateTime.parse(tarjeta['created_at']))}', style: estiloFechas),
                ],
              ),
              Container(
                height: 30,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
                child: Image.asset(
                  'assets/images/${_nombreImagen(tarjeta['marca'])}.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formateaNumero(String numero) {
    return '${numero.substring(0, 4)} ${numero.substring(4, 8)} ${numero.substring(8, 12)} ${numero.substring(12)}';
  }

  String _nombreImagen(String marca) {
    switch (marca) {
      case 'Visa':
        return 'visa';
      case 'MasterCard':
        return 'mastercard';
      case 'American Express':
        return 'american';
      case 'Diners Club':
        return 'diners';
      default:
        return 'generica';
    }
  }
}
