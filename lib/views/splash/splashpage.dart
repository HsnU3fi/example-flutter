import 'package:espad/providers/cards.provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
//==============================================================================
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    context.read<CardsProvider>().gotToCardPage(context);
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.white,
                  ])),
          child: ListView(
            children: [
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),

                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Espad",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.macondo(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
