import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Livro {
  final String titulo;
  final String autor;

  Livro({required this.titulo, required this.autor});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CatalogoLivros(),
    );
  }
}

class CatalogoLivros extends StatelessWidget {
  const CatalogoLivros({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Livro> livros = [
      Livro(titulo: 'Star Wars: A Vingança dos Sith', autor: 'Matthew Stover'),
      Livro(titulo: 'Harry Potter e a Pedra Filosofal', autor: 'J.K. Rowling'),
      Livro(titulo: 'Demolidor: O homem sem medo', autor: 'Paul Crilley'),
      Livro(titulo: 'Duna', autor: 'Frank Herbert '),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Livros'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: livros.length,
        itemBuilder: (context, index) {
          final livro = livros[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const Icon(Icons.book, size: 35),
              title: Text(
                livro.titulo,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(livro.autor),
            ),
          );
        },
      ),
    );
  }
}