import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class negroni2 extends StatelessWidget {
  const negroni2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Receta Negroni'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
    ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Image(
                  image: AssetImage('assets/images/negroni2.png'),
                  alignment: Alignment.center,
                  height: 250,
                  width: 250,
                ),
              ),
            Divider(
              height: 30.0,
              color: Colors.grey[800],
            ),
            Text(
              'NOMBRE DEL COCTEL',
                style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text(
              'NEGRONI',
              style: TextStyle(
               color: Colors.amberAccent[200],
               letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30.0),
            Text(
              'INGREDIENTES',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                '2 oz. Gin',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Text(
                '2 oz. Cinzano Rosso',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Text(
                '2 oz. Campari Bitter',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Text(
                'Cubos de hielo',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Text(
                'Rodaja de naranja',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
                'PREPARACION',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                'En un vaso Old Fashion, colocamos cubos de hielo a tope, 2 oz de Gin, 2 oz de Cinzano Rosso y 2 oz de Bitter Campari. Integramos el coctel con un cucharil y luego decoramos con una rodaja de naranja. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est??ndar de las industrias desde el a??o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us?? una galer??a de textos y los mezcl?? de tal manera que logr?? hacer un libro de textos especimen. No s??lo sobrevivi?? 500 a??os, sino que tambien ingres?? como texto de relleno en documentos electr??nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci??n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m??s recientemente con software de autoedici??n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
