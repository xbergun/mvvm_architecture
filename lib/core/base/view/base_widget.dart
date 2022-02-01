import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T value)? onPageBuilder;
  final T? vievModel;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const BaseView(
      {Key? key,
      this.vievModel,
      this.onPageBuilder,
      this.onModelReady,
      this.onDispose})
      : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) {
      // widget.onModelReady!();
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) {
      widget.onDispose;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    //  return widget.onPageBuilder!(context,widget.vievModel);
  }
}
