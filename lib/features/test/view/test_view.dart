import 'package:flutter/material.dart';
import 'package:mvvm_architecture/core/base/state/base_state.dart';
class TestView extends StatefulWidget {
  TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: dynamicHeight(0.1),
      color: themeData.primaryColor,
    );
  }
}