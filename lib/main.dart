import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridd/pages/negroni2.dart';
import 'package:gridd/pages/aperolsp.dart';
import 'package:gridd/pages/cubalibre.dart';
import 'package:gridd/pages/garibaldi.dart';
import 'package:gridd/pages/gintonic.dart';
import 'package:gridd/pages/fernetcola.dart';
import 'package:gridd/pages/camparitonic.dart';
import 'package:gridd/pages/tomcollins.dart';
import 'package:gridd/pages/boulevardier.dart';
import 'package:gridd/pages/drymartini.dart';
import 'package:gridd/pages/manhattan.dart';
import 'package:gridd/pages/margarita.dart';
import 'package:gridd/pages/caipiroska.dart';
import 'package:gridd/pages/caipirinha.dart';
import 'package:gridd/pages/oldf.dart';
import 'package:gridd/pages/loading.dart';
import 'package:gridd/pages/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  List<String> listTitles = <String> [
    'NEGRONI',
    'APEROL SPRITZ',
    'CUBA LIBRE',
    'GARIBALDI',
    'GIN TONIC',
    'FERNET COLA',
    'CAMPARI TONIC',
    'TOM COLLINS',
    'BOULEVARDIER',
    'DRY MARTINI',
    'MANHATTAN',
    'MARGARITA',
    'CAIPIROSKA',
    'CAIPIRINHA',
    'OLD FASHIONED',
  ];

  List<Route> myRoute = [
    MaterialPageRoute(builder: (_) => negroni2() ),
    MaterialPageRoute(builder: (_) => aperolsp() ),
    MaterialPageRoute(builder: (_) => cubalibre() ),
    MaterialPageRoute(builder: (_) => garibaldi() ),
    MaterialPageRoute(builder: (_) => gintonic() ),
    MaterialPageRoute(builder: (_) => fernetcola() ),
    MaterialPageRoute(builder: (_) => camparitonic() ),
    MaterialPageRoute(builder: (_) => tomcollins() ),
    MaterialPageRoute(builder: (_) => boulevardier() ),
    MaterialPageRoute(builder: (_) => drymartini() ),
    MaterialPageRoute(builder: (_) => manhattan() ),
    MaterialPageRoute(builder: (_) => margarita() ),
    MaterialPageRoute(builder: (_) => caipiroska() ),
    MaterialPageRoute(builder: (_) => caipirinha() ),
    MaterialPageRoute(builder: (_) => oldf() ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Cocteleando'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
      drawer: Drawer(
        // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
        // a través de las opciones en el Drawer si no hay suficiente espacio vertical
        // para adaptarse a tod.
        child: ListView(
          // Importante: elimina cualquier padding del ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Cocteleando'),
              decoration: BoxDecoration(
                color: Colors.amberAccent[200],
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Acerca de'),
              onTap: () {
                // // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.75,

          child: SafeArea(
            child: ListView.builder(
                padding: EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 40.0),
                scrollDirection: Axis.horizontal,
                reverse: false,
                itemCount: listTitles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Card(
                      color: Colors.amberAccent[200],
                      child: ListTile(
                        title: Text(listTitles[index]),
                        onTap: () {
                          Navigator.of(context).push(myRoute[index]);
                        },
                      ),
                    ),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.60,
                  );
                }),
          ),
        ));

  }
}