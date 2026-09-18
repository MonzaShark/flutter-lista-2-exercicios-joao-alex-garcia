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
      home: CadastroTarefas(),
    );
  }
}

class CadastroTarefas extends StatefulWidget {
  const CadastroTarefas({super.key});

  @override
  State<CadastroTarefas> createState() => _CadastroTarefasState();
}

class _CadastroTarefasState extends State<CadastroTarefas> {
  final TextEditingController tarefaController = TextEditingController();
  final List<String> tarefas = [];

  void adicionarTarefa() {
    String texto = tarefaController.text.trim();
    if (texto.isNotEmpty) {
      setState(() {
        tarefas.add(texto);
      });
      tarefaController.clear();
    }
  }

  void removerTarefa(int index) {
    setState(() {
      tarefas.removeAt(index);
    });
  }

  @override
  void dispose() {
    tarefaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Tarefas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: tarefaController,
                    decoration: const InputDecoration(
                      labelText: 'Nova Tarefa',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: adicionarTarefa,
                  child: const Text('Adicionar'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: tarefas.isEmpty
                  ? const Center(child: Text('Nenhuma tarefa cadastrada.'))
                  : ListView.builder(
                      itemCount: tarefas.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(tarefas[index]),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => removerTarefa(index),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}