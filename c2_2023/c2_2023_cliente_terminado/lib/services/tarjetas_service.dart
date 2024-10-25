import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TarjetasService {
  final String apiUrl = 'http://10.0.2.2:8000/api';

  Future<List<dynamic>> tarjetas() async {
    var respuesta = await http.get(Uri.parse('${this.apiUrl}/tarjetas'));

    if (respuesta.statusCode == 200) {
      return json.decode(respuesta.body);
    }
    return [];
  }

  Future<LinkedHashMap<String, dynamic>> tarjeta(int tarjetaId) async {
    var respuesta = await http.get(Uri.parse('${this.apiUrl}/tarjetas/$tarjetaId'));
    return json.decode(respuesta.body);
  }

  Future<bool> borrar(int tarjetaId) async {
    var respuesta = await http.delete(Uri.parse('${this.apiUrl}/tarjetas/$tarjetaId'));
    return respuesta.statusCode == 200;
  }

  Future<LinkedHashMap<String, dynamic>> agregar(String propietario, String marca, String numero, String validoHasta, int cupo, int montoUtilizado) async {
    var respuesta = await http.post(
      Uri.parse('${this.apiUrl}/tarjetas'),
      headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'},
      body: json.encode(<String, dynamic>{
        'propietario': propietario,
        'marca': marca,
        'numero': numero,
        'valido_hasta': validoHasta,
        'cupo': cupo,
        'monto_utilizado': montoUtilizado,
      }),
    );

    return json.decode(respuesta.body);
  }

  Future<LinkedHashMap<String, dynamic>> editar(int tarjetaId, String propietario, String marca, String numero, String validoHasta, int cupo, int montoUtilizado) async {
    var respuesta = await http.put(
      Uri.parse('${this.apiUrl}/tarjetas/$tarjetaId'),
      headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'},
      body: json.encode(<String, dynamic>{
        'propietario': propietario,
        'marca': marca,
        'numero': numero,
        'valido_hasta': validoHasta,
        'cupo': cupo,
        'monto_utilizado': montoUtilizado,
      }),
    );

    return json.decode(respuesta.body);
  }
}
