import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 253, 242, 249),
        title: const Text(
          'Portfolio',
          style: TextStyle(color: Color.fromARGB(255, 125, 77, 112)),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Adicione ação aqui
          },
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 125, 77, 112),
          ),
        ));
  }
}
