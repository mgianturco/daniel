import 'package:daniel/list.dart';
import 'package:flutter/material.dart';

class EditItemPage extends StatelessWidget {
  final Tarea editdata;
  final int index;
  final _tituloController = TextEditingController();
  final _descripcionController = TextEditingController();

  EditItemPage({Key key, @required this.editdata, @required this.index}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    _tituloController.text = editdata.titulo;
    _descripcionController.text = editdata.descripcion;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Editar/Eliminar Item"),
        actions: <Widget>[
          IconButton( icon: Icon(
            Icons.delete,
            semanticLabel: 'Borrar',
          ),
          onPressed: () {
            // Borrar Item
            data.remove(editdata);
            Navigator.pop(context);
          },
        ),]
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 120.0),
            TextField(
              controller: _tituloController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Titulo',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _descripcionController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Descripcion',          
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('GUARDAR'),
                  onPressed: () {
                    data[index].titulo = _tituloController.text;
                    data[index].descripcion = _descripcionController.text;
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
