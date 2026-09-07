import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(
                    warna: Colors.blue,
                    icon: Icons.favorite,
                    teks: 'Believe',
                    warnaTeks: Colors.white,
                  ),
                  SizedBox(width: 20),
                  KotakBiruJempol(
                    warna: Colors.green,
                    icon: Icons.favorite,
                    teks: 'Shine',
                    warnaTeks: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(
                    warna: Colors.purple,
                    icon: Icons.favorite,
                    teks: 'Dream',
                    warnaTeks: Colors.white,
                  ),
                  SizedBox(width: 20),
                  KotakBiruJempol(
                    warna: Colors.orange,
                    icon: Icons.favorite,
                    teks: 'Smile',
                    warnaTeks: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color warna;
  final IconData icon;
  final String teks;
  final Color warnaTeks;

  KotakBiruJempol({
    required this.warna,
    required this.icon,
    required this.teks,
    required this.warnaTeks,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black,width: 2,),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          Text(
            teks,
            style: TextStyle(
              color: warnaTeks,
            ),
          ),
        ],
      ),
    );
  }
}

