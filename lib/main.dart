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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 103, 41, 122),
        ),
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
  String _pesanError =
      ''; // Variabel untuk menampung teks peringatan di bawah angka

  // Fungsi untuk mengurangi angka
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        _pesanError = ''; // Bersihkan pesan jika normal
      } else {
        // Pesan muncul di bawah angka
        _pesanError = 'Anda mencapai\nAkar semua masalah di Aritmatika :)';
      }
    });
  }

  // Fungsi untuk menambah angka
  void _incrementCounter() {
    setState(() {
      if (_counter < 10) {
        _counter++;
        _pesanError = ''; // Bersihkan pesan jika normal
      } else {
        // Pesan muncul di bawah angka
        _pesanError = 'Mentok nih woi,\nTekan aja gak ngaruh! :v';
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
            Text(
              'Coba Tekan Tombol\napakah yang terjadi',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 20,
            ), // Jarak antara angka dan pesan peringatan
            Text(
              // Teks Posisinya Tepat di Bawah Angka
              _pesanError,
              style: const TextStyle(
                color: Colors.red, // Diberi warna merah agar seperti peringatan
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Tombol Kurang (-)
          FloatingActionButton(
            onPressed: _decrementCounter,
            backgroundColor: _counter == 0
                ? const Color.fromARGB(255, 255, 255, 255).withValues(alpha: 0.4)
                : null,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          // Tombol Tambah (+)
          FloatingActionButton(
            onPressed: _incrementCounter,
            backgroundColor: _counter == 10
                ? const Color.fromARGB(255, 255, 255, 255).withValues(alpha: 0.4)
                : null,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
