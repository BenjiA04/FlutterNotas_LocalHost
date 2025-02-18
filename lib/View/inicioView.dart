import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  final List<Map<String, String>> notas;
  final Function(int) eliminarNota;

  const PaginaInicio(
      {super.key, required this.notas, required this.eliminarNota});

  @override
  _ListaNotasScreenState createState() => _ListaNotasScreenState();
}

class _ListaNotasScreenState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notas Guardadas')),
      body: widget.notas.isEmpty
          ? const Center(child: Text('No hay notas guardadas'))
          : ListView.builder(
              itemCount: widget.notas.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text(widget.notas[index]["titulo"]!,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(widget.notas[index]["contenido"]!),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        widget.eliminarNota(index);
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
