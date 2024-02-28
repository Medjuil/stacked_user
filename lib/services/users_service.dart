import 'package:dio/dio.dart';
import 'package:sky_stacked/models/user.dart';

class UsersService {
  final _dio = Dio();

  Future<List<User>> getUsers() async {
    final response =
        await _dio.get('https://jsonplaceholder.typicode.com/users');
    try {
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((e) => User.fromJson(e)).toList();
      } else {
        throw Exception();
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
