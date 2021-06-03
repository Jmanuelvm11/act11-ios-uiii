import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicaciones de nuestros consultorios'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.red,
                Colors.blueAccent,
                Colors.blueAccent,
                Colors.blueAccent,
                Colors.red,
              ],
            ),
          ),
        ), //Fin appBar
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.red,
                Colors.blueAccent,
                Colors.blueAccent,
                Colors.blueAccent,
                Colors.red,
              ],
            )),
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Ubicaciones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Acontinuacion le mostraremos nuestras ubicaciones disponibles y un numero para contactarnos',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  } //Fin _crearcard1

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/loading.gif'),
                image: NetworkImage("https://raw.githubusercontent.com/Jmanuelvm11/act11-images/main/Local.jpg.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\Clínica dental\656 397 4652\Calle: cordillera de los andes #5121, Blvd. Oscar Flores Col',
                style: TextStyle(fontSize: 17, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  } //Fin _crearcard2
} //FourthPage
