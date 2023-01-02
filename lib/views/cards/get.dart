import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../providers/cards.provider.dart';
import 'edit.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: context.read<CardsProvider>().search,
              controller: context.read<CardsProvider>().editingController,
              decoration: const InputDecoration(
                  labelText: "Search",
                  hintText: "Name, Family Name, ID NO",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          if (context.watch<CardsProvider>().showBtn)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    iconSize: 25,
                    color: Colors.black,
                    icon: const Icon(TablerIcons.trash),
                    onPressed: () {}),
                Container(
                    padding: const EdgeInsets.only(right: 8),
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        isChecked = value!;
                      },
                    ))
              ],
            ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              cacheExtent: 9999,
              padding: const EdgeInsets.all(8),
              itemCount: context.watch<CardsProvider>().items.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(227, 227, 227, 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    height: 210,
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.memory(
                              base64.decode(
                                  "${context.watch<CardsProvider>().items[index]['image']}"),
                              fit: BoxFit.fill,
                              height: 165,
                              width: 120,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  width: 200,
                                  child: Text(
                                      "Name : ${context.watch<CardsProvider>().items[index]['name']}",
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontWeight:
                                              FontWeight.bold) // has impact
                                      ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  width: 200,
                                  child: Text(
                                      "Family Name : ${context.watch<CardsProvider>().items[index]['family_name']}",
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontWeight:
                                              FontWeight.bold) // has impact
                                      ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  width: 200,
                                  child: Text(
                                      "Birth date : ${context.watch<CardsProvider>().items[index]['birth_date']}",
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontWeight:
                                              FontWeight.bold) // has impact
                                      ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  width: 200,
                                  child: Text(
                                      "ID No : ${context.watch<CardsProvider>().items[index]['id_no']}",
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontWeight:
                                              FontWeight.bold) // has impact
                                      ),
                                ),
                                if (context.watch<CardsProvider>().items[index]
                                    ['is_active'])
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/images/active.png',width: 20,height: 20 ,fit: BoxFit.fill,),
                                      ],
                                    ),
                                  ),
                                if (context.watch<CardsProvider>().items[index]
                                        ['is_active'] ==
                                    false)
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            'assets/images/deactivate.png',width: 20,height: 20 ,fit: BoxFit.fill,),
                                      ],
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              iconSize: 22,
                              color: Colors.black,
                              icon: const Icon(TablerIcons.pencil),
                              onPressed: () {
                                var item = context
                                    .read<CardsProvider>()
                                    .items[index]["ID"];
                                context.read<CardsProvider>().getItemCard(item);
                                sendItemsToEditPage(context);
                              },
                            ),
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                isChecked=value!;
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                             // if (context.watch<CardsProvider>().items[index] == false)
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 20, 15),
                                  width: 120,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(87, 239, 221, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                    child: const Text(
                                      'check',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    onPressed: () {
                                      var item = context
                                          .read<CardsProvider>()
                                          .items[index]["ID"];
                                      context
                                          .read<CardsProvider>()
                                          .sendItemsToCheckPage(context, item);
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.black,
        backgroundColor: const Color.fromRGBO(87, 239, 221, 1),
        onPressed: () {
          context.read<CardsProvider>().gotToAddCardPage(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
  void sendItemsToEditPage(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const EditCards(),
        ));
  }
}
