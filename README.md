# matt_q

Package defined a new extends widget to extends on StatefulWidget.
A Provider's Structure simple

# Visit Website 
https://edu.dalathub.com

# Usage
- An Example for Page:
```dart
import 'package:example/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:matt_q/matt_q.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends MattQ<HomePage, CounterModel> {
  /*
  * Function is going to call after builder function done.
  * It used for Future function or normal function
  * */
  @override
  void widgetsBindingAsyncCallback(BuildContext context, CounterModel model) {
    // TODO: implement widgetsBindingAsyncCallback
    super.widgetsBindingAsyncCallback(context, model);
  }

  /*
   * Return page model
   */
  @override
  CounterModel model() {
    return CounterModel();
  }

  /*
  * Return page using builder
  * */
  @override
  Function(BuildContext context, CounterModel model, Widget child) builder() {
    return (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("MattQ"),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Example for matt_q package"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(model.counter.toString()),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.increment,
            backgroundColor: Colors.blue,
            child: Icon(Icons.add, color: Colors.white),
          ),
        );
  }
}

```
-An example of a child widget used parent's model:

```dart
import 'package:matt_q/over_consumer.dart';

class ConsumerWidget extends StatefulWidget {
  @override
  _ConsumerWidgetState createState() => _ConsumerWidgetState();
}

class _ConsumerWidgetState extends OverConsumer<ConsumerWidget, Counter> {
   
  @override
  Function(BuildContext context, Counter model, Widget child) builder() {
    return (context, model, child) => Container();
  }
}
```
