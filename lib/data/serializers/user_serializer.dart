import '../../domain/entities/user.dart';
import 'serializer.dart';

class UserSerializer implements Serializer<User, Map<String, dynamic>> {
  @override
  User from(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      avatarUrl: json['avatarUrl'] as String,
    );
  }

  @override
  Map<String, dynamic> to(User object) {
    return {
      'id': object.id,
      'name': object.name,
      'email': object.email,
      'avatarUrl': object.avatarUrl,
    };
  }

  @override
  User fake() => const User(
        id: 1,
        name: 'User 1',
        email: '',
        avatarUrl: '',
      );
}
