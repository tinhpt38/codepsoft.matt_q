

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class OverConsumer<T extends StatefulWidget, E extends ChangeNotifier>
    extends State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => widgetsBindingAsyncCallback(context));
  }

  void widgetsBindingAsyncCallback(BuildContext context) {}

  Function(BuildContext context, E model, Widget child) builder();

  @override
  Widget build(BuildContext context) {
    return Consumer<E>(builder: builder());
  }
}