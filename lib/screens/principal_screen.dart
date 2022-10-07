import 'package:flutter/material.dart';

import '../elements/work_card.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tarefas',
        ),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: (opacity) ? 1 : 0,
        child: ListView(
          children: const [
            WorkCard(
              text: 'Aprender Flutter',
              image: 'assets/images/flutter_logo.png',
              difficulty: 4,
            ),
            WorkCard(
              text: 'Aprender Dart',
              image: 'assets/images/dart_logo.png',
              difficulty: 3,
            ),
            WorkCard(
              text: 'Faculdade',
              image: 'assets/images/university_logo.png',
              difficulty: 2,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              opacity = !opacity;
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 47, 183, 232),
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
