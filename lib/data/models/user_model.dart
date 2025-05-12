import 'package:meta/meta.dart';

@immutable
class UserModel {
  final String id;
  final String name;
  final String email;

  const UserModel({required this.id, required this.name, required this.email});

  // 필요한 경우, fromJson, toJson, copyWith 등의 메소드를 추가할 수 있습니다.
}
