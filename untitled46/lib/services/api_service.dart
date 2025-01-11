import 'package:dio/dio.dart';
import 'package:untitled46/models/modeling.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<Modeling> fetchTodo() async {
    final response = await _dio.get('$baseUrl/todos/1');
    return Modeling.fromJson(response.data);
  }
}
