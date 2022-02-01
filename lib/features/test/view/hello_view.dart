import 'dart:html';

import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Row(
        children: [
          //! Böyle olunca, state ekranı çizerken hepsini birden çiziyor. O yüzden sorun burada başlıyor.
          Text(number.toString()),
          Text("sdsadasdsa"),
        ],
      ),
    );
  }
}
