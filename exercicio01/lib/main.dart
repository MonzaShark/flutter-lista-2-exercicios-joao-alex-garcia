import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListaLinguagens(),
    );
  }
}

class ListaLinguagens extends StatelessWidget {
  const ListaLinguagens({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> linguagens = [
      'Dart',
      'Python',
      'Java',
      'C#',
      'C++',
      'JavaScript',
      'Lua',
      'Assembly',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Linguagens'),
      ),
      body: ListView.builder(
        itemCount: linguagens.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code),
            title: Text(linguagens[index]),
          );
        },
      ),
    );
  }
}