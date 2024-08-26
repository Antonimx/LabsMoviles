import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:lab_6/pages/tabs/tab_comida.dart';
import 'package:lab_6/pages/tabs/tab_locales.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //AppBar
        appBar: AppBar(
          backgroundColor: Colors.lightBlue.shade50,
          leading: Icon(
            MdiIcons.food,
            color: Colors.orange,
          ),
          title: Text.rich(
            TextSpan(style: TextStyle(fontSize: 20), children: [
              TextSpan(
                text: 'USM',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              TextSpan(text: 'Eats', style: TextStyle(color: Colors.orange))
            ]),
          ),

          //TapBar
          bottom: TabBar(
              dividerColor: Colors.transparent,
              indicatorColor: Colors.deepOrange,
              tabs: [
                Tab(text: 'Comida'),
                Tab(text: 'Locales'),
              ]),
        ),

        //Body
        body: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.lightBlue.shade50,
          child: TabBarView(children: [TabComida(), TabLocales()]),
        ),
      ),
    );
  }
}
