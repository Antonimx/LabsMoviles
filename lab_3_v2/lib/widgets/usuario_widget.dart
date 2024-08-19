import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class UsuarioWidget extends StatelessWidget {
  const UsuarioWidget({
    super.key,
    required this.user,
  });

  final dynamic user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(MdiIcons.accountCircle, color: Colors.white, size: 30),
      title: Text(
        user['email'],
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Column(
        children: [
          Row(
            children: [
              Icon(
                MdiIcons.ipNetworkOutline,
                color: Colors.white,
              ),
              Text(
                user['ip'],
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                MdiIcons.cellphone,
                color: Colors.white,
              ),
              Text(
                user['telefono'],
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Última conexión',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            user['ultimo_login'],
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
