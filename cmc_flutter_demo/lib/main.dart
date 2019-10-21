import 'package:cmc_flutter_demo/page/login_page.dart';
import 'package:cmc_flutter_demo/page/my_home_page.dart';
import 'package:cmc_flutter_demo/redux/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final stores = new Store<UserState>(

appReducer,
    ///初始化数据
    initialState: new UserState(name: ""),

  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
      new StoreProvider(
          store: stores,
          child: new StoreBuilder<UserState>(builder: (context,store){

        return  new  MaterialApp(
          title: 'Flutter Demo',
          routes: routers,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
//          home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }));

  }
}

Map<String,WidgetBuilder> routers = {
  MyHomePage.sName : (context){return new MyHomePage(title: 'Flutter Demo Home Page');},
  LoginPage.sName : (context){return new LoginPage();},

};


