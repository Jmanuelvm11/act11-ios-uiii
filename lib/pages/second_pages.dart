import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber[200],
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  child: Text(
                    'Consultorio Dental',
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 45.0, color: Colors.red),
                  ),
                ), //Container
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              child: new Image(
                            width: 300.0,
                            height: 200.0,
                            image: new AssetImage('assets/images/consultorio-dental.jpg'),
                          ) //Fin Image
                              ) //Fin Align
                        ], //Fin Widget[]
                      ), //Fin Stack
                    ), //Fin Container
                    SizedBox(height: 40),
                    TextField(decoration: InputDecoration(hintText: "Correo Electronico", icon: Icon(Icons.email)) //Fin Inpit Decoration
                        ), //Fin TextField
                    SizedBox(
                      height: 40,
                    ),
                    TextField(decoration: InputDecoration(hintText: "Contraseña", icon: Icon(Icons.vpn_key)) //Fin Inpit Decoration
                        ), //Fin TextField 2
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Flexible(
                          child: RaisedButton(
                            color: Colors.indigoAccent[700],
                            shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              ;
                            },
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  "Iniciar Sesion",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        new Flexible(
                          child: RaisedButton(
                            color: Colors.amber,
                            shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              ;
                            },
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  "Reintentar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25, color: Colors.indigo[900]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ], //fin de widget
                    ), //fin de row
                  ], //Fin Widget[]
                ), //Fin Column
              ], //Fin Widget []
            ), //Fin Column
          ), //Fin SingleChildScrollView
        ), //Fin Container
      ), //Fin SafeArea
    ); //Fin Scaffold
  } // widget
} // first page