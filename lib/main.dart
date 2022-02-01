import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/constants/app/app_constant.dart';
import 'core/init/lang/lang_manager.dart';

void main() => runApp(
  EasyLocalization(child: MyApp(), supportedLocales: LanguageManager.instance.supportedLocales, path: AppLocaletionConstants.LANG_ASSET_PATH)
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}