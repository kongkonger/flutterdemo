import 'package:cmc_flutter_demo/redux/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LoginPage extends StatefulWidget {
  static final String sName = "page/login";
  @override
  _LoginPageState createState() => _LoginPageState();


}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new StoreBuilder<UserState>(builder: (context,store){
     double size = 200;
     return Scaffold(
       //
       appBar: AppBar(
         title: Text('aaa'),
       ),
       body: Center(
         child: Text('abc'),
       ),
     );

//      return Scaffold(
//        appBar: AppBar(
//          title: Text(widget.title),
//        ),
//        body: new Container(
//          child: new ListView.builder(
//            itemBuilder: (context, index) {
//              return new InkWell(
//                onTap: () {
//                  Navigator.of(context).pushNamed(routeLists[index]);
//                },
//                child: new Card(
//                  child: new Container(
//                    alignment: Alignment.centerLeft,
//                    margin: EdgeInsets.symmetric(horizontal: 10),
//                    height: 50,
//                    child: new Text(routerName[index]),
//                  ),
//                ),
//              );
//            },
//            itemCount: routers.length,
//          ),
//        ), // This trailing comma makes auto-formatting nicer for build methods.
//      );

    });
  }

}