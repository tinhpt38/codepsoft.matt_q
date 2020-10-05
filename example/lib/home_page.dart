import 'package:cross_build/cross_build.dart';
import 'package:example/counter_model.dart';
import 'package:flutter/material.dart';

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
