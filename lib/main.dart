import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 21, 186, 150),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bem-vindo ao Meu projeto Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Função para exibir uma mensagem no console ao pressionar os botões
  void _handleButtonPress(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _handleButtonPress('Menu pressionado!'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () => _handleButtonPress('Home pressionado!'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texto acima do Container
            const Text(
              'Olá eu sou...',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
                height: 10), // Espaçamento entre o texto e o Container
            // Container com borda, sombra e bordas arredondadas
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(183, 189, 138, 219), // Cor de fundo
                borderRadius: BorderRadius.circular(20), // Bordas arredondadas
                border: Border.all(
                  color: const Color.fromARGB(208, 4, 4, 4), // Cor da borda
                  width: 2, // Espessura da borda
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Rayanne Cordeiro',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10), // Espaçamento
            const Text(
              'Aluna do curso Talento Tech!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _handleButtonPress('Botão favorito pressionado!'),
        tooltip: 'Favoritar',
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
