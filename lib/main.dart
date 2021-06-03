import 'package:flutter/material.dart';
import 'package:Valenzuela/pages/first_pages.dart';
import 'package:Valenzuela/pages/second_pages.dart';
import 'package:Valenzuela/pages/third_pages.dart';
import 'package:Valenzuela/pages/fourth_page.dart';

void main() => runApp(BurguerApp());

class BurguerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consultorio Dental',
      home: PaginaInicio(),
    ); //fin de MaterialApp
  } //fin de Widget{}
} //fin de BurguerApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin de clase PaginaInicio

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
      case 3:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FourthPage());
        break;
    } //fin de switch seleccion de paginas

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red, size: 30.0), //icon
            title: Text('Inicio')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.red, size: 30.0), //icon
            title: Text('Login')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box, color: Colors.red, size: 30.0), //icon
            title: Text('Inicio sesion')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.red, size: 30.0), //icon
            title: Text('Pagina4')), //
      ]), // bottom
    ); //fin de Scaffold
  } //fin de Widget
} //fin de clase _PaginaInicioState
