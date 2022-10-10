import 'package:flutter/material.dart';
import 'package:principios/data/work_inherited.dart';
import 'package:principios/screens/form_screen.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tarefas',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 70,
        ),
        children: WorkInherited.of(context).workList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                workContext: context,
              ),
            ),
          );
        },
        backgroundColor: const Color.fromARGB(255, 47, 183, 232),
        child: const Icon(Icons.add),
      ),
    );
  }
}
