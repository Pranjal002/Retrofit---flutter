import 'package:json_annotation/json_annotation.dart';
part  '../../core/gen/Domain/Models/post_model.g.dart';
@JsonSerializable()
class PostModel {
  int userId;
  int id;
  String title;
  String body;
  PostModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId});
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);

}
