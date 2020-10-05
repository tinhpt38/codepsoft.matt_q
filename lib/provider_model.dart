import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

mixin ProviderModel<T extends ChangeNotifier> {
  Function(BuildContext context, T model, Widget child) withBuilder();
  T withModel();

  Widget present(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: withModel(),
      child: Consumer<T>(
        builder: withBuilder(),
      ),
    );
  }
}