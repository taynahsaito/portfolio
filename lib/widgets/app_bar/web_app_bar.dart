import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(0, 0), // Mudança vertical do sombreado
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 253, 242, 249),
        toolbarHeight: 70, // Defina a altura desejada para o AppBar
        leading: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'lib/assets/logo.png',
                width: 70,
                height: 70,
              ),
            ),
            const Spacer(),
            const SizedBox(width: 320), // Adicione o tamanho desejado
            TextButton(
              onPressed: () {
                // Role até o início da página
                _scrollController.animateTo(
                  0,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text(
                'Início',
                style: TextStyle(
                  color: Color.fromARGB(255, 125, 77, 112),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Pressao()),
                // );
              },
              child: const Text(
                'Sobre mim',
                style: TextStyle(
                  color: Color.fromARGB(255, 125, 77, 112),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Projetos',
                style: TextStyle(
                  color: Color.fromARGB(255, 125, 77, 112),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Habilidades',
                style: TextStyle(
                  color: Color.fromARGB(255, 125, 77, 112),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Contato',
                style: TextStyle(
                  color: Color.fromARGB(255, 125, 77, 112),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
