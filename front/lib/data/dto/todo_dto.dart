// data/dtos/todo_dto.dart
import 'package:json_annotation/json_annotation.dart';
import '../../domain/todo.dart';
part 'todo_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TodoDto {
  final String label;
  final String description;
  
  const TodoDto({required this.label, required this.description});

  factory TodoDto.fromJson(Map<String, dynamic> json) => _$TodoDtoFromJson(json);
  
  Map<String, dynamic> toJson() => _$TodoDtoToJson(this);

  Todo toDomain() => Todo(label: label, description: description);

  static TodoDto fromDomain(Todo t) => TodoDto(label: t.label, description: t.description);
}
