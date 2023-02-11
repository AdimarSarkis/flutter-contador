import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  bool get isEmpty => count == 0;
  void decrement() {
    setState(() {
      count--;
    });
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c22),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode Entrar',
            style: TextStyle(
                fontSize: 30,
                color: Color(0xffd3bc8e),
                fontWeight: FontWeight.w700,
                letterSpacing: 3),
          ),
          const SizedBox(height: 32),
          Text(
            '$count',
            style: const TextStyle(
                fontSize: 100,
                color: Color(0xffd3bc8e),
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpty ? null : decrement,
                style: TextButton.styleFrom(
                    backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : const Color(0xff5f5649),
                    fixedSize: const Size(100, 100),
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                child: const Text(
                  '-',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color(0xffd3bc8e),
                  ),
                ),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                    backgroundColor:  const Color(0xff5f5649),
                    fixedSize: const Size(100, 100),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                child: const Text(
                  '+',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color(0xffd3bc8e),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
