# cross_build

Package defined a new extends widget to extends on StatefulWidget.
Using Provider

# Visit Website 
https://codepsoft.com/

# Usage
- An Example for Page:
```dart
import 'package:cross_build/cross_build.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends CrossBuild<HomePage,CounterModel> {

  /*
  * Function is going to call after builder function done.
  * It used for Future function or normal function
  * */
  @override
  void widgetsBindingAsyncCallback(BuildContext context) async{

  }

  /**
   * Return page model
   */
  @override
  CounterModel model() {
    return new CounterModel();
  }

  /*
  * Return page using builder
  * */
  @override
  Function(BuildContext context, CounterModel model, Widget child) builder() {
    return (context, model, child) => Scaffold(
      appBar: AppBar(
        title: Text("Cross build package on Provider"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Example for Cross build"),
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
        child: Icon(Icons.add,color: Colors.white),
      ),
    );
  }
}
```
-An example of a child widget used parent's model:

```dart
import 'package:cross_build/over_consumer.dart';

class ConsumWidget extends StatefulWidget {
  @override
  _ConsumWidgetState createState() => _ConsumWidgetState();
}

class _ConsumWidgetState extends OverConsumer<ConsumWidget, Counter> {
   
  @override
  Function(BuildContext context, Counter model, Widget child) builder() {
    return (context, model, child) => Container();
  }
}
```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
