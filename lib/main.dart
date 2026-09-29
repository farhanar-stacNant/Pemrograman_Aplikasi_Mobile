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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 189, 39, 235)),
      ),
      home: const MyHomePage(title: 'Moh Farhan Ali 24102016'),
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
  int _counter = 5; // Nilai awal

  // Fungsi untuk MENAMBAH angka (Maksimal 10)
  void _incrementCounter() {
    setState(() {
      if (_counter < 10) {
        _counter++;
      }
    });
  }

  // 1. TAMBAHAN BARU: Fungsi untuk MENGURANGI angka (Minimal 0)
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hasil hitung mundur: '),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Tombol Kurang (-) -> Akan mati (null) jika angka sudah 0
          FloatingActionButton(
            onPressed: _counter > 0 ? _decrementCounter : null, 
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          // Tombol Tambah (+) -> Akan mati (null) jika angka sudah 10
          FloatingActionButton(
            onPressed: _counter < 10 ? _incrementCounter : null, 
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}