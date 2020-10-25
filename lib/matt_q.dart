library matt_q;

import 'package:matt_q/provider_model.dart';
import 'package:flutter/material.dart';

abstract class MattQ<T extends StatefulWidget, E extends ChangeNotifier>
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

  void delay(E model) {}

  @override
  Function(BuildContext context, E model, Widget child) withBuilder() {
    Future.delayed(Duration.zero, () async {
      delay(withModel());
    });
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