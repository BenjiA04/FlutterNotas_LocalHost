import 'package:flutter/material.dart';

class TotalNotasScreen extends StatelessWidget {
  final int totalNotas;

  const TotalNotasScreen({super.key, required this.totalNotas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Total de Notas')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
        crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
        children: [
          Column(
            mainAxisSize:
                MainAxisSize.min, // Esto es para que no ocupe toda la pantalla
            children: [
              // Foto de perfil
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                  ),
                  Positioned(
                    bottom: 0.5, // Ajusta la distancia desde la parte inferior
                    left: 10, // Ajusta la posición horizontal si es necesario
                    child: Container(
                      padding: EdgeInsets.all(
                          4), // Espacio entre el borde y el ícono
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue, // Fondo del ícono
                      ),
                      child: Icon(
                        Icons.verified,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              // Foto de perfil

              const SizedBox(height: 16),

              Text(
                "Usuario de ejemplo",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 3),
              Text(
                "usuariodeejemplo@gmail.com",
                style: TextStyle(fontSize: 15),
              ),

              const SizedBox(height: 16),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16), // Margen lateral
            child: Container(
              width: double.infinity, // Ocupa todo el ancho disponible
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.note),
                          const SizedBox(width: 8),
                          Text(
                            'Total de notas:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        '$totalNotas',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
