library matt_q;

import 'package:flutter/material.dart';
import 'package:matt_q/provider_model.dart';

abstract class MattQ<T extends StatefulWidget, E extends ChangeNotifier>
    extends State<T> with ProviderModel<E> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => widgetsBindingAsyncCallback(context, _localModel));
  }

  E _localModel;

  void widgetsBindingAsyncCallback(BuildContext context, E model) {}

  Function(BuildContext context, E model, Widget child) builder();
  E model();

  @override
  Function(BuildContext context, E model, Widget child) withBuilder() {
    return builder();
  }

  @override
  E withModel() {
    _localModel = model();
    return _localModel;
  }

  @override
  Widget build(BuildContext context) {
    return present(context);
  }
}
