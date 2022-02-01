import 'package:flutter/material.dart';
import '../../../core/base/state/base_state.dart';
import '../../../core/base/view/base_widget.dart';
import '../viewmodel/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      vievModel: TestViewModel(),
      onPageBuilder: (context, value) => Text("asdasdas"),
      
    );
  }
}
