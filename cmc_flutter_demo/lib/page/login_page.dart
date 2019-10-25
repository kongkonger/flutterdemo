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
//     return Scaffold(
//       //
//       appBar: AppBar(
//         title: Text('aaa'),
//       ),
//       body: Center(
//         child: Text('abc'),
//       ),
//     );
      //https://flutterchina.club/widgets/material/
      //必须最外层是一个  masterial形式的widget   Material 带有路由形式   Scaffold--appbar形式
      // Appbar  工具栏和其他widget
      //BottomNavigationBar  底部导航条，可以很容易在tap之间进行切换
      //TabBar 显示水平选项卡的 Material Design widget
      //TabBarView  显示与当前选中的选项卡相对应的  页面视图 ，通常和 TabBar一起使用
      //MaterialApp  一个方便的widget ，它封装了应用程序 实现 Material Design 所需要的一些widget
    return Scaffold(
      appBar:  AppBar(
        title: Text('appbar title'),
      ),
      body:   Container(// 也可以Center 居中形式
        height: 56.0,
        //水平左右  left  right，vertical: 代表上下
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null,
            ),
            //填充剩余空间
            Expanded(
              child: Text('abcd'),
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: null,
            )
          ],
        ),
      )
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