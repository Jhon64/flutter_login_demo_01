import 'package:flutter/material.dart';

class CrearCuentaWidget extends StatefulWidget {
  const CrearCuentaWidget({super.key});

  @override
  State<CrearCuentaWidget> createState() => _CrearCuentaWidgetState();
}

class _CrearCuentaWidgetState extends State<CrearCuentaWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text("Crear Cuenta")
        ],
      ),
    );
  }
}
