import 'package:flutter/material.dart';

void main() => runApp(PaginaInicio());

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicio',
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    ); //Fin MaterialApp
  } //Fin widget
} //Fin clase

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: FadeInImage(
                    placeholder: AssetImage('assets/images/loading.gif'),
                    image: NetworkImage("https://github.com/Jmanuelvm11/act11-images/blob/main/CFT.jpg.jpg"),
                  ),
                ),
              ), //Fin Container texto

              SizedBox(height: 35),
              Container(
                height: 225,
                width: 225,
                child: FadeInImage(
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: NetworkImage("https://raw.githubusercontent.com/Jmanuelvm11/act11-images/main/software-consultorio-odontologico.jpg.jpg"),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.blue,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.red,
                      width: 5.0,
                    ),
                  ),
                ),
              ), //Fin Container Foto
              SizedBox(height: 35),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Bienvenidos a la mejor pagina de la ciudad donde encontraras soluciones para tus problemas dentales con los mejores odontologos de la ciudad.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
                  ),
                ),
              ), //Fin Container texto
            ], //Fin del children
          ), //Fin Column
        ),
      ), //Fin signle
    ); //Fin Scaffold
  }
}
//Fin
