import 'package:flash_blog/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/features/auth/data/models/user_model.freezed.dart';
part '../../../../generated/features/auth/data/models/user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel implements User {
  const factory UserModel({
    required final String id,
    required final String username,
    required final String email,
  }) = _UserModel;

  factory UserModel.fromJson(final Map<String, dynamic> json) => _$UserModelFromJson(json);
}
