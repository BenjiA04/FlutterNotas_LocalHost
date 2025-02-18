import 'package:flutter/material.dart';

class PaginaNotas extends StatefulWidget {
  final Function(String, String) agregarNota;

  const PaginaNotas({super.key, required this.agregarNota});

  @override
  _NotasScreenState createState() => _NotasScreenState();
}

class _NotasScreenState extends State<PaginaNotas> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _contenidoController = TextEditingController();

  void _agregarNota() {
    if (_tituloController.text.isNotEmpty &&
        _contenidoController.text.isNotEmpty) {
      widget.agregarNota(_tituloController.text, _contenidoController.text);
      _tituloController.clear();
      _contenidoController.clear();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Nota agregada")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Notas')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _tituloController,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _contenidoController,
              decoration: const InputDecoration(labelText: 'Contenido'),
              maxLines: 3,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _agregarNota,
              child: const Text('Agregar Nota'),
            ),
          ],
        ),
      ),
    );
  }
}
