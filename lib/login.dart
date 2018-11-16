import 'package:daniel/list.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/quara.png'),
                SizedBox(height: 16.0),
                Text('Quara'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Usuario',
              ),
            ),
            SizedBox(height: 12.0),
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                FlatButton(
                  child: Text('CANCELAR'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton(
                  child: Text('PROXIMO'),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => new ListScreen()),
          );
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
