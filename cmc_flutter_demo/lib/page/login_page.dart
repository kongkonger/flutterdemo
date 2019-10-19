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
     return new Container(
         child: Text("loginpage text"),
     );



    });
  }

}