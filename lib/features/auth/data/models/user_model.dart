import 'package:flash_blog/core/common/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/features/auth/data/models/user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel implements User {
  const factory UserModel({
    required final String id,
    required final String username,
    required final String email,
  }) = _UserModel;

  factory UserModel.fromJson(final Map<String, dynamic> json) {
    final Map<String, dynamic>? metadata =
        json['user_metadata'] as Map<String, dynamic>?;

    return UserModel(
      id: json['id'] ?? '',
      email: json['email'] ?? '',
      username: metadata?['username'] ?? '',
    );
  }
}
