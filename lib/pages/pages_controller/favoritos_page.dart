import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  const FavoritosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Favoritos'),),
      body: const Center(child: Text('Favoritos'),),
    );
  }
}
