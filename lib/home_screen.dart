//Crea la pantalla inicial y llama a moviebdpage
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen Principal'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const Text(
                "Aplicaciones en Flutter",
                style: TextStyle(fontSize: 24, color: Colors.amber),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKG1hSs9srRTcASB0k4BmbLjGTGU49n0Zm5kSyBx0xkC-5vp7jCFlhxi_kP_yTt-RkOM0&usqp=CAU'),
              const SizedBox(
                height: 50,
              ),
              Center(
                  child: Wrap(spacing: 10, children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'moviedbpage/');
                    },
                    child: const Text('Ver API de la nube')),
              ]))
            ]),
          ),
        ),
      ),
    );
  }
}
