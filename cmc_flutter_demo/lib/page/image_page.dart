import 'package:cmc_flutter_demo/redux/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'login_page.dart';

class ImagePage extends StatefulWidget {
  static final String sName = "/";
  ImagePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int _counter = 0;

  Store<UserState> _getStore() {
    if (context == null) {
      return null;
    }
    return StoreProvider.of(context);
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      Navigator.of(context).pushNamed(LoginPage.sName);
      _getStore().dispatch(new UpdateUserAction("动态更新的title名称"));
    });
  }

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
//    cmc add storebuilder必须有 类型数据
    return  StoreBuilder<UserState>(builder: (context,store){
//      Scaffold
      return new  Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
          title: Text(store.state.name),
        ),
        body:


      ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
      return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
      );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
//        Center(
//          // Center is a layout widget. It takes a single child and positions it
//          // in the middle of the parent.
//          child: Column(
//            // Column is also a layout widget. It takes a list of children and
//            // arranges them vertically. By default, it sizes itself to fit its
//            // children horizontally, and tries to be as tall as its parent.
//            //
//            // Invoke "debug painting" (press "p" in the console, choose the
//            // "Toggle Debug Paint" action from the Flutter Inspector in Android
//            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//            // to see the wireframe for each widget.
//            //
//            // Column has various properties to control how it sizes itself and
//            // how it positions its children. Here we use mainAxisAlignment to
//            // center the children vertically; the main axis here is the vertical
//            // axis because Columns are vertical (the cross axis would be
//            // horizontal).
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(
//                'You have pushed the button this many times:',
//              ),
//              Text(
//                '$_counter',
//                style: Theme.of(context).textTheme.display1,
//              ),
//            ],
//          ),
//        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    });
  }
}