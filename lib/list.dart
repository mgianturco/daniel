import 'package:daniel/edititem.dart';
import 'package:daniel/newitem.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lista"),
        actions: <Widget>[
          IconButton( icon: Icon(
            Icons.add,
            semanticLabel: 'Agregar',
          ),
          onPressed: () {
            // Agregar Item
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewItemPage()));
          },
        ),]
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: IconButton(icon: Icon(Icons.edit), onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new EditItemPage(editdata: data[index], index: index,)));
              }, ),
              title: Text(data[index].titulo), 
              subtitle: Text(data[index].descripcion));
          },
        ),
    );
    }
}

class Tarea {
  Tarea(this.titulo, this.descripcion);

  String titulo;
  String descripcion;
}

final List<Tarea> data = <Tarea>[
  Tarea('Quara Malbec','Famoso por su diseño colorido e irreverente. Quara es conocida por la llamita de su etiqueta.'),
  Tarea('Quara Cabernet','Se trata de un vino típicamente salteño, fiel exponente de Cafayate: lugar alto y seco.'), 
];

class TareaItem extends StatelessWidget {
  const TareaItem(this.tarea);

  final Tarea tarea;

  Widget _buildTiles(Tarea root) {
    return ListTile(
      leading: IconButton(icon: Icon(Icons.edit), onPressed: () {
        //Editar Item  
      }, ),
      title: Text(root.titulo), 
      subtitle: Text(root.descripcion));
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(tarea);
  }
}

