import 'package:dio/dio.dart';
import 'package:todo_app/core/http/endpoints.dart';
import '../dto/todo_dto.dart';

class TodoRemoteDataSource {
  final Dio _dio;
  TodoRemoteDataSource(this._dio);

  Future<List<TodoDto>> list() async {
    final res = await _dio.get(
      Endpoints.todos,
    );

    final data = (res.data as List).cast<Map<String, dynamic>>();

    return data.map(TodoDto.fromJson).toList();
  }

  Future<TodoDto> create(TodoDto dto) async {
    final res = await _dio.post(Endpoints.todos, data: dto.toJson());
    return TodoDto.fromJson(res.data as Map<String, dynamic>);
  }

  Future<void> delete(String id) async {
    final res = await _dio.delete(Endpoints.todoById(id));
    if (res.statusCode != 200 && res.statusCode != 204) {
      throw DioException(
        requestOptions: res.requestOptions,
        response: res,
        error: 'Falha ao deletar',
      );
    }
  }
}
