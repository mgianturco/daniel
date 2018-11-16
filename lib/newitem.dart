import 'package:daniel/list.dart';
import 'package:flutter/material.dart';

class NewItemPage extends StatefulWidget {
  @override
  _NewItemPageState createState() => _NewItemPageState();
}

class _NewItemPageState extends State<NewItemPage> {
  final _tituloController = TextEditingController();
  final _descripcionController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Nuevo Item")),
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
                    data.add(new Tarea(_tituloController.text, _descripcionController.text));
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
