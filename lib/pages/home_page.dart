import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meu_portfolio/breakpoints.dart';
import 'package:meu_portfolio/widgets/app_bar/mobile_app_bar.dart';
import 'package:meu_portfolio/widgets/app_bar/web_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 242, 249),
        appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(80, 160, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Taynah Saito',
                      style: TextStyle(
                          fontSize: 75,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 250, 141, 219)),
                    ),
                    Text(
                      'Atualmente estou cursando Ciência da Computação, com o sonho de me tornar uma futura profissional focada em ...',
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 113, 113),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 250, 141, 219),
                          size: 20,
                        ),
                        Text(
                          'São Bernardo do Campo - SP',
                          style: TextStyle(
                              color: Color.fromARGB(255, 125, 77, 112),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.work_rounded,
                          size: 20,
                          color: Color.fromARGB(255, 250, 141, 219),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '</ software developer >',
                          style: TextStyle(
                              color: Color.fromARGB(255, 125, 77, 112),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
