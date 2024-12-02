import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Strawberry Pavlova'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://example.com/your_image.jpg'), // Ganti dengan URL gambar Anda
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Strawberry Pavlova', // Ganti dengan nama resep Anda
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Deskripsi singkat tentang resep Strawberry Pavlova. Anda dapat mengganti teks ini dengan deskripsi resep favorit Anda.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Bahan-bahan:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('• 4 putih telur besar'),
            Text('• 1 cangkir gula putih'),
            Text('• 1 sendok teh ekstrak vanili'),
            Text('• 1 sendok teh jus lemon'),
            Text('• 2 sendok teh tepung maizena'),
            Text('• 1 pint stroberi segar'),
            SizedBox(height: 16),
            Text(
              'Instruksi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('1. Panaskan oven hingga 150°C.'),
            Text('2. Kocok putih telur hingga membentuk puncak yang kaku.'),
            Text('3. Tambahkan gula sedikit demi sedikit, sambil terus dikocok.'),
            Text('4. Lipat ekstrak vanili, jus lemon, dan tepung maizena.'),
            Text('5. Ratakan adonan di atas loyang.'),
            Text('6. Panggang selama 1 jam.'),
            Text('7. Tambahkan krim kocok dan stroberi segar di atasnya.'),
          ],
        ),
      ),
    );
  }
}

