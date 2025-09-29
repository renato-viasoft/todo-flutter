// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) => TodoDto(
  label: json['label'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$TodoDtoToJson(TodoDto instance) => <String, dynamic>{
  'label': instance.label,
  'description': instance.description,
};
