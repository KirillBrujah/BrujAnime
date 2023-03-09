import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_models.dart';

part 'user_models.freezed.dart';
part 'user_models.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    ImagesWrapper? images,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
