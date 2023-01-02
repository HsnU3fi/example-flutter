import 'dart:convert';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:espad/views/cards/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/cards.provider.dart';

class EditCards extends StatelessWidget {
  const EditCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
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
      body: Center(
          child: ListView(children: [
            Column(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Name :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
                        child: TextField(
                          controller: TextEditingController(
                              text: context
                                  .read<CardsProvider>()
                                  .name ),
                          onChanged: (value) {
                            context
                                .read<CardsProvider>()
                                .name = value;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), //container
                  ], //widget
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Family Name :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: TextField(
                          controller: TextEditingController(
                              text: context
                                  .watch<CardsProvider>()
                                  .familyName),
                          onChanged: (value) {
                            context
                                .read<CardsProvider>()
                                .familyName = value;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ], //widget
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Mobile :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        height: 80,
                        padding: const EdgeInsets.fromLTRB(50, 15, 0, 0),
                        child: TextField(
                          controller: TextEditingController(
                              text: context
                                  .watch<CardsProvider>()
                                  .mobile),
                          onChanged: (value) {
                            context
                                .read<CardsProvider>()
                                .mobile = value;
                          },
                          maxLength: 11,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), //container
                  ], //widget
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "ID No :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        height: 80,
                        padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                        child: TextField(
                          controller: TextEditingController(
                              text: context
                                  .watch<CardsProvider>()
                                  .iDNo),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            context
                                .read<CardsProvider>()
                                .iDNo = value;
                          },
                          maxLength: 10,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), //container
                  ], //widget
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Birth date :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Flexible(
                        child: ElevatedButton(
                          // padding: EdgeInsets.fromLTRB(90, 15, 0, 0),

                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {},
                          child: DateTimeField(
                              controller: TextEditingController(text: context.watch<CardsProvider>().birthDate),
                              format: context.watch<CardsProvider>().format,
                              onChanged: (value) {
                                context
                                    .read<CardsProvider>()
                                    .birthDate = value.toString();
                              },
                              textAlign: TextAlign.center,
                              onShowPicker: (context, currentValue) {
                                return showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1900),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                              }),
                        )), //f
                  ], //widget
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Address :",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.fromLTRB(45, 15, 0, 0),
                        child: TextField(
                          controller: TextEditingController(
                              text: context
                                  .watch<CardsProvider>()
                                  .address),
                          onChanged: (value) {
                            context
                                .read<CardsProvider>()
                                .address = value;
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(4)),
                                borderSide:
                                BorderSide(width: 1, color: Colors.black)),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), //container
                  ], //widget
                ),
              ),

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
                    InkWell(
                      onTap:(){
                        context.read<CardsProvider>().choose();
                      },
                      child: Container(
                          width: 100,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(87, 239, 221, 1),
                              )),
                          child: Image.memory(
                            base64.decode(context
                                .watch<CardsProvider>()
                                .image),
                            fit: BoxFit.fill,
                            height: 180,
                            width: 130,
                          )),
                    ),
                  ], //widget
                ),
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 15),
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
                          context.read<CardsProvider>().editUser();
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
            ])
          ])),
    );
  }

  void _showSnackBarSuccess(BuildContext context) {
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
