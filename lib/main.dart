import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: GasolinaApp(),
));

class GasolinaApp extends StatelessWidget{

  String _resultado = "";
  void _calcular(){

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Combustivel'),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Bem-vindo à Calculadora de Combustivel!",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 36),

            Text(
              "Informe o valor dos combustiveis:",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "valor do Etanol:",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                labelText: "valor da Gasolina:",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
          
            ElevatedButton(
              onPressed: _calcular,
              child: Text("Calcular"),
            ),
            SizedBox(height: 36),
            Text(
              _resultado,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
    );
  }
}