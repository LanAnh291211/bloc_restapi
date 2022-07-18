import 'package:bloc_abc/model/user_model.dart';
import 'package:dio/dio.dart';

class  UserRepository {

  Future<UserModel> getUser () async {
   return await Dio().get('http://127.0.0.1:5500/api/user.json').then((response) {
     return UserModel.fromJson(response.data);
   });
  }
}