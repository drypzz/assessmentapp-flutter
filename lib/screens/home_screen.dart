import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String nome;
  const HomeScreen({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> livros = [
      {'titulo': 'O Código Limpo', 'autor': 'Robert C. Martin'},
      {'titulo': 'Refatoração', 'autor': 'Martin Fowler'},
      {'titulo': 'Design Patterns', 'autor': 'Erich Gamma et al.'},
      {'titulo': 'Dart in Action', 'autor': 'Chris Buckett'},
      {'titulo': 'Flutter Essentials', 'autor': 'Prateek Sharma'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meus Livros',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              'Olá, $nome! 👋',
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Aqui estão suas últimas leituras:',
              style: TextStyle(fontSize: 16, color: Colors.grey[400]),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: livros.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.teal.withOpacity(0.2),
                        child: const Icon(Icons.menu_book, color: Colors.teal),
                      ),
                      title: Text(
                        livros[index]['titulo']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(livros[index]['autor']!),
                      ),
                      trailing: const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
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
