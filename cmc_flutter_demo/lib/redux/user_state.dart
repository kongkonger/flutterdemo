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

/// redux 的 combineReducers, 通过 TypedReducer 将 UpdateUserAction 与 reducers 关联起来
final UserReducer = combineReducers<String>([
  TypedReducer<String, UpdateUserAction>(_updateLoaded),
]);

/// 如果有 UpdateUserAction 发起一个请求时
/// 就会调用到 _updateLoaded
/// _updateLoaded 这里接受一个新的userInfo，并返回
String _updateLoaded(String user, action) {
  user = action.userInfo;
  return user;
}

class UpdateUserAction {
  final String name;

  UpdateUserAction(this.name);
}

