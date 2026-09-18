import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Aluno {
  final String nome;
  final double nota;

  Aluno({required this.nome, required this.nota});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListaAlunos(),
    );
  }
}

class ListaAlunos extends StatelessWidget {
  const ListaAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Aluno> alunos = [
      Aluno(nome: 'João Alex', nota: 9.5),
      Aluno(nome: 'Eduardo Santos', nota: 7.0),
      Aluno(nome: 'Arthur Durval', nota: 8.2),
      Aluno(nome: 'José Roberto', nota: 5.5),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Alunos'),
      ),
      body: ListView.builder(
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final aluno = alunos[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(aluno.nome),
            subtitle: Text('Nota: ${aluno.nota.toStringAsFixed(1)}'),
          );
        },
      ),
    );
  }
}