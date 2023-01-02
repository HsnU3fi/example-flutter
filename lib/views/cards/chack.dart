import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/cards.provider.dart';
import 'get.dart';

class CheckCard extends StatelessWidget {
  const CheckCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 30,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    child: Text(
                      "Espad",
                      style: GoogleFonts.pacifico(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      // this._refreshApp();
                    },
                  ),
                ],
              ),
            )),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text("Name :",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(context.watch<CardsProvider>().name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        alignment: Alignment.centerRight,
                        iconSize: 20,
                        color: Colors.black,
                        icon: const Icon(Icons.cancel),
                        onPressed: () {
                          context.read<CardsProvider>().reject(0);
                        },
                      ),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 20,
                          color: Colors.green,
                          icon: const Icon(Icons.check_circle),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text("Family Name :",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(context.watch<CardsProvider>().familyName,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          iconSize: 20,
                          color: Colors.black,
                          icon: const Icon(Icons.cancel),
                          onPressed: () {
                            context.read<CardsProvider>().reject(1);
                          }),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 20,
                          color: Colors.green,
                          icon: const Icon(Icons.check_circle),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text("Mobile :",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(context.watch<CardsProvider>().mobile,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          iconSize: 20,
                          color: Colors.black,
                          icon: const Icon(Icons.cancel),
                          onPressed: () {
                            context.read<CardsProvider>().reject(2);
                          }),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 20,
                          color: Colors.green,
                          icon: const Icon(Icons.check_circle),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text("ID No :",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(context.watch<CardsProvider>().iDNo,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          iconSize: 20,
                          color: Colors.black,
                          icon: const Icon(Icons.cancel),
                          onPressed: () {
                            context.read<CardsProvider>().reject(4);
                          }),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 20,
                          color: Colors.green,
                          icon: const Icon(Icons.check_circle),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text("Birth Date :",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(context.watch<CardsProvider>().birthDate,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          iconSize: 20,
                          color: Colors.black,
                          icon: const Icon(Icons.cancel),
                          onPressed: () {
                            context.read<CardsProvider>().reject(3);
                          }),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 20,
                          color: Colors.green,
                          icon: const Icon(Icons.check_circle),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    padding: const EdgeInsets.only(left: 30),
                    child: const Text("Address :",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 80,
                    child: Text(context.watch<CardsProvider>().address,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold) // has impact
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          alignment: Alignment.centerRight,
                          iconSize: 20,
                          color: Colors.black,
                          icon: const Icon(Icons.cancel),
                          onPressed: () {
                            context.read<CardsProvider>().reject(5);
                          }),
                      IconButton(
                          alignment: Alignment.centerLeft,
                          iconSize: 20,
                          color: Colors.green,
                          icon: const Icon(Icons.check_circle),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              const CheckImage(),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 15),
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: const Text(
                      'back',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onPressed: () {
                      gotToCardsPage(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 15),
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(87, 239, 221, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: const Text(
                      'save',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onPressed: () {
                      context.read<CardsProvider>().checkCard();
                      _showSnackBarSuccess(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ]));
  }
   _showSnackBarSuccess(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Success',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          textAlign: TextAlign.center),
      behavior: SnackBarBehavior.floating,
      width: 300,
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Future.delayed(const Duration(milliseconds: 1200), () {
      gotToCardsPage(context);
      context.read<CardsProvider>().getData();
    });
  }

  gotToCardsPage(context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const Cards();
    }));
  }
}

class CheckImage extends StatelessWidget {
  const CheckImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Profile Pic :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                  width: 130,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                        color: const Color.fromRGBO(87, 239, 221, 1),
                      )),
                  child: Image.memory(
                    base64.decode(context.watch<CardsProvider>().image),
                    fit: BoxFit.fill,
                    height: 150,
                    width: 120,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      alignment: Alignment.centerRight,
                      iconSize: 20,
                      color: Colors.black,
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        context.read<CardsProvider>().reject(6);
                      }),
                  IconButton(
                      alignment: Alignment.centerLeft,
                      iconSize: 20,
                      color: Colors.green,
                      icon: const Icon(Icons.check_circle),
                      onPressed: () {}),
                ],
              ),
            ], //widget
          ),
        ),
      ],
    );
  }
}
