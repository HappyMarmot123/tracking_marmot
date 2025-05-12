import 'package:tracking_marmot/data/models/user_model.dart';
// import 'package:shared_preferences/shared_preferences.dart'; // SharedPreferences (필요시 pubspec.yaml에 추가)

abstract class UserLocalDataSource {
  Future<UserModel?> getUser(String userId);
  Future<void> cacheUser(UserModel user);
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  // final SharedPreferences sharedPreferences; // SharedPreferences 주입 예시
  // UserLocalDataSourceImpl({required this.sharedPreferences});

  final Map<String, UserModel> _cache = {}; // 임시 인메모리 캐시
  UserLocalDataSourceImpl(); // const 제거

  @override
  Future<UserModel?> getUser(String userId) async {
    // TODO: 실제 로컬 저장소 (예: SharedPreferences, SQLite) 로직 구현
    // 예시: final jsonString = sharedPreferences.getString('user_'$userId);
    // if (jsonString != null) {
    //   return UserModel.fromJson(jsonDecode(jsonString));
    // }
    // return null;
    await Future.delayed(const Duration(milliseconds: 100)); // 임시 지연
    return _cache[userId];
  }

  @override
  Future<void> cacheUser(UserModel user) async {
    // TODO: 실제 로컬 저장소에 사용자 정보 저장 로직 구현
    // 예시: final jsonString = jsonEncode(user.toJson());
    // await sharedPreferences.setString('user_'${user.id}, jsonString);
    await Future.delayed(const Duration(milliseconds: 50)); // 임시 지연
    _cache[user.id] = user;
  }
}
