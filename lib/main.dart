import 'package:flutter/material.dart';
import 'package:riojas/paginas_tabs/pagina1.dart';
import 'package:riojas/paginas_tabs/pagina2.dart';
import 'package:riojas/paginas_tabs/pagina3.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, title: "Proyecto final", home: MiCasa()));
}

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
}

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vivebuses de Juarez"),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: TabBarView(
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.greenAccent[700],
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.alarm),
            ),
            Tab(
              icon: Icon(Icons.account_circle_sharp),
            ),
            Tab(
              icon: Icon(Icons.speaker_notes),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
