import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Produto {
  final String nome;
  final double preco;
  final int quantidade;

  Produto({
    required this.nome,
    required this.preco,
    required this.quantidade,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EstoqueSimples(),
    );
  }
}

class EstoqueSimples extends StatefulWidget {
  const EstoqueSimples({super.key});

  @override
  State<EstoqueSimples> createState() => _EstoqueSimplesState();
}

class _EstoqueSimplesState extends State<EstoqueSimples> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController precoController = TextEditingController();
  final TextEditingController quantidadeController = TextEditingController();

  final List<Produto> produtos = [];

  void adicionarProduto() {
    String nome = nomeController.text.trim();
    double preco = double.tryParse(precoController.text) ?? 0.0;
    int quantidade = int.tryParse(quantidadeController.text) ?? 0;

    if (nome.isNotEmpty && preco > 0 && quantidade > 0) {
      setState(() {
        produtos.add(
          Produto(nome: nome, preco: preco, quantidade: quantidade),
        );
      });
      limparCampos();
    }
  }

  void removerProduto(int index) {
    setState(() {
      produtos.removeAt(index);
    });
  }

  void limparCampos() {
    nomeController.clear();
    precoController.clear();
    quantidadeController.clear();
  }

  @override
  void dispose() {
    nomeController.dispose();
    precoController.dispose();
    quantidadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estoque Simples'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome do Produto',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: precoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Preço (R\$)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: quantidadeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Quantidade',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: adicionarProduto,
              child: const Text('Adicionar Produto'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: produtos.isEmpty
                  ? const Center(
                      child: Text(
                        'A lista está vazia. Nenhum produto cadastrado.',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  : ListView.builder(
                      itemCount: produtos.length,
                      itemBuilder: (context, index) {
                        final produto = produtos[index];
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.inventory_2, size: 35),
                            title: Text(
                              produto.nome,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'R\$ ${produto.preco.toStringAsFixed(2)} • Estoque: ${produto.quantidade}',
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => removerProduto(index),
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