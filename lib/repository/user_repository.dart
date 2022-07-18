import 'package:bloc_abc/model/user_model.dart';
import 'package:dio/dio.dart';

class UserRepository {
  Future<UserModel> getUser() async {
    final Response response = await Dio().get('https://mocki.io/v1/ca8ba25f-15f4-455f-86f8-266c30b50dca');
    final UserModel user = UserModel.fromJson(response.data);
    return user;
  }
}
