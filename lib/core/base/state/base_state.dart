import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);

  //!ihtiyacımız olan yerlerde mediaquery alıyoruz.
  double dynamicHeight(double value) => MediaQuery.of(context).size.height * value;

}

