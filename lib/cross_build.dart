library cross_build;

import 'package:cross_build/provider_model.dart';
import 'package:flutter/material.dart';

abstract class CrossBuild<T extends StatefulWidget, E extends ChangeNotifier>
    extends State<T> with ProviderModel<E> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => widgetsBindingAsyncCallback(context));
  }

  void widgetsBindingAsyncCallback(BuildContext context) {}

  Function(BuildContext context, E model, Widget child) builder();
  E model();

  @override
  Function(BuildContext context, E model, Widget child) withBuilder() {
    return builder();
  }

  @override
  E withModel() {
    return model();
  }

  @override
  Widget build(BuildContext context) {
    return present(context);
  }
}