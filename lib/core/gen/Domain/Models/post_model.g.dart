// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../Domain/Models/post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
