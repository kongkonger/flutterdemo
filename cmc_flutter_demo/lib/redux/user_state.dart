import 'package:redux/redux.dart';
class UserState{
  String name;
 UserState({this.name});
}

UserState appReducer(UserState state, action) {
  return UserState(
    ///通过 UserReducer 将 GSYState 内的 userInfo 和 action 关联在一起
    name: UserReducer(state.name, action),


  );
}
//cmc add 正确的顺序是  1、State结构  ------
//                     2、 appReducer 接收state结构和action---------并对应state的变量名称设置 reducer对象
//                     3、具体的reducer对象连接 reducer和action
//cmc add -----------  4、具体的action实现类 通过接收action值改变state值  ---------
//                     5、当然先要有 action类

/// redux 的 combineReducers, 通过 TypedReducer 将 UpdateUserAction 与 reducers 关联起来
final UserReducer = combineReducers<String>([
  //cmc add _updateLoaded 相当于预先设置的回调，
  // cmc add当调用 store.dispatch(new ***action(state值))时候，则会回调到此 _updateLoaded回调中
  //cnc add 然后就可以利用 action中的值来 更新 state中的值了
  TypedReducer<String, UpdateUserAction>(_updateLoaded),
]);

/// 如果有 UpdateUserAction 发起一个请求时
/// 就会调用到 _updateLoaded
/// _updateLoaded 这里接受一个新的userInfo，并返回
String _updateLoaded(String user, action) {

  //cmc add 这里的名称必须和 action对象的变量一致 ，name即UpdateUserAction 中定义的变量名称
  user = action.name;
  return user;
}

class UpdateUserAction {
  final String name;

  UpdateUserAction(this.name);
}

