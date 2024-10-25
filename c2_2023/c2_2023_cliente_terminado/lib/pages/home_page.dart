import 'package:c1_2023_cliente_test/constants.dart';
import 'package:c1_2023_cliente_test/pages/tarjeta_agregar_page.dart';
import 'package:c1_2023_cliente_test/pages/tarjeta_editar_page.dart';
import 'package:c1_2023_cliente_test/services/tarjetas_service.dart';
import 'package:c1_2023_cliente_test/widgets/tarjeta_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MaterialPageRoute route = MaterialPageRoute(builder: (context) => TarjetaAgregarPage());
          Navigator.push(context, route).then((value) {
            setState(() {});
          });
        },
        child: Icon(MdiIcons.plus),
        backgroundColor: Color(kSecondary),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Color(kPrimary),
      appBar: AppBar(
        leading: Icon(MdiIcons.creditCardMultiple),
        title: Text('Tarjetas Emitidas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(5),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FutureBuilder(
            future: TarjetasService().tarjetas(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData || snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(color: Color(kSecondary)),
                );
              }
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var tarjeta = snapshot.data[index];
                  return Slidable(
                    //EDITAR
                    startActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            MaterialPageRoute route = MaterialPageRoute(
                              builder: (context) => TarjetaEditarPage(
                                tarjetaId: tarjeta['id'],
                              ),
                            );
                            Navigator.push(context, route).then((value) {
                              setState(() {});
                            });
                          },
                          backgroundColor: Colors.lightGreen,
                          label: 'Editar Tarjeta',
                          icon: MdiIcons.pen,
                        ),
                      ],
                    ),
                    //BORRAR
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            _confirmBorrado(context).then((confirmaBorrado) {
                              if (confirmaBorrado) {
                                setState(() {
                                  TarjetasService().borrar(tarjeta['id']);
                                });
                              }
                            });
                          },
                          backgroundColor: Color(kSecondary),
                          label: 'Borrar Tarjeta',
                          icon: MdiIcons.trashCan,
                        ),
                      ],
                    ),
                    child: TarjetaTile(tarjeta: tarjeta),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  //confirmar borrado
  Future<dynamic> _confirmBorrado(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirmación de Borrado'),
          content: Text('¿Borrar la tarjeta seleccionada?'),
          actions: [
            TextButton(
              child: Text('CANCELAR'),
              onPressed: () => Navigator.pop(context, false),
            ),
            FilledButton(
              child: Text('ACEPTAR'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        );
      },
    );
  }
}
