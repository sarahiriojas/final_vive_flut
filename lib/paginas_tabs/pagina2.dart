import 'package:flutter/material.dart';

class SegundoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registro de usuario',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: IngresoSistema(),
    );
  }
}

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
}

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff900C3F),
        centerTitle: true,
        title: Text('Registro de usuarios'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/dimond.png'),
                SizedBox(height: 16.0),
              ],
            ),
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Nombre Usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Aceptar'),
                          color: Colors.green[200],
                          padding: EdgeInsets.all(10.0),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ),
                        new Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        RaisedButton(
                          child: Text(
                            'Cancelar',
                          ),
                          color: Colors.red[200],
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              )
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "YAY! Ya esta Registrado",
                    ),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Finalizar'),
                      color: Colors.green[200],
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
