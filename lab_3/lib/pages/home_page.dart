import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4da5d3),
        leading: Icon(
          MdiIcons.squareRoundedBadgeOutline,
          color: Colors.white,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Laboratorio 3', style: TextStyle(color: Colors.white)),
            Text('Desarrollo de Aplicaciones Móviles',
                style: TextStyle(color: Colors.white, fontSize: 14))
          ],
        ),
      ),
      body: Column(
        children: [
          //USUARIOS DEL SISTEMA
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              color: Color(0xFF4772a5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Usuarios del sistema',
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                  Expanded(
                      child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(MdiIcons.accountCircle,
                            color: Colors.white, size: 30),
                        title: Text('proncelli0@deliciousday.com',
                            style: TextStyle(color: Colors.white)),
                        subtitle: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(MdiIcons.ipNetworkOutline,
                                      color: Colors.white),
                                  Text(
                                    '201.138.2.128',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(MdiIcons.cellphone, color: Colors.white),
                                  Text(
                                    '579-725-2341',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ultima conexión:',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '10/08/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.white),
                      ListTile(
                        leading: Icon(MdiIcons.accountCircle,
                            color: Colors.white, size: 30),
                        title: Text('jhannen1@yolasite.com',
                            style: TextStyle(color: Colors.white)),
                        subtitle: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(MdiIcons.ipNetworkOutline,
                                      color: Colors.white),
                                  Text(
                                    '21.17.140.203',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(MdiIcons.cellphone, color: Colors.white),
                                  Text(
                                    '688-781-6573',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ultima conexión:',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '11/08/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.white),
                      ListTile(
                        leading: Icon(MdiIcons.accountCircle,
                            color: Colors.white, size: 30),
                        title: Text('tobradden2@canalblog.com',
                            style: TextStyle(color: Colors.white)),
                        subtitle: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(MdiIcons.ipNetworkOutline,
                                      color: Colors.white),
                                  Text(
                                    '18.166.131.248',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(MdiIcons.cellphone, color: Colors.white),
                                  Text(
                                    '144-970-3119',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ultima conexión:',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '09/08/2024',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                      // ListTile(
                      //   leading: Icon(MdiIcons.accountCircle,
                      //       color: Colors.white, size: 30),
                      //   title: Text('proncelli0@deliciousday.com',
                      //       style: TextStyle(color: Colors.white)),
                      //   subtitle: Column(
                      //     children: [
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.ipNetworkOutline,
                      //                 color: Colors.white),
                      //             Text(
                      //               '201.138.2.128',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Row(
                      //           children: [
                      //             Icon(MdiIcons.cellphone, color: Colors.white),
                      //             Text(
                      //               '579-725-2341',
                      //               style: TextStyle(color: Colors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   trailing: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'Ultima conexión:',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       Text(
                      //         '10/08/2024',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Divider(color: Colors.white),
                    ],
                  )),
                ],
              ),
            ),
          ),
          //PRUDCTOS
          Expanded(
            flex: 4,
            child: Container(
                width: double.infinity,
                color: Color(0xFF585286),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Productos',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListTile(),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       border: Border.all(color: Colors.white)),
                          //   child: ListTile(),
                          // ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          //PIE DE PAGINA
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Color(0xFF514166),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Usuarios del sistema',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
