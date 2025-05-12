import 'package:tracking_marmot/data/models/user_model.dart';
// import 'package:tracking_marmot/data/data_sources/remote/user_remote_data_source.dart'; // 생성 예정
// import 'package:tracking_marmot/data/data_sources/local/user_local_data_source.dart'; // 생성 예정

abstract class UserRepository {
  Future<UserModel> getUser(String userId);
  // Future<void> saveUser(UserModel user); // 예시
}

class UserRepositoryImpl implements UserRepository {
  // final UserRemoteDataSource remoteDataSource; // 주입 예정
  // final UserLocalDataSource localDataSource; // 주입 예정

  // const UserRepositoryImpl({
  //   required this.remoteDataSource,
  //   required this.localDataSource,
  // });

  const UserRepositoryImpl(); // 임시 생성자

  @override
  Future<UserModel> getUser(String userId) async {
    // TODO: 실제 데이터 소스 로직 구현
    // 예시: remoteDataSource 또는 localDataSource에서 데이터 가져오기
    await Future.delayed(const Duration(milliseconds: 500)); // 임시 지연
    return UserModel(id: userId, name: 'Mock User', email: 'mock@example.com');
  }

  // @override
  // Future<void> saveUser(UserModel user) async {
  //   // TODO: 실제 데이터 저장 로직 구현
  // }
}
