import 'package:get/get.dart';

import '../user_login.model.dart';

class UserLoginProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return UserLogin.fromJson(map);
      if (map is List) {
        return map.map((item) => UserLogin.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<UserLogin?> getUserLogin(int id) async {
    final response = await get('userlogin/$id');
    return response.body;
  }

  Future<Response<UserLogin>> postUserLogin(UserLogin userlogin) async =>
      await post('userlogin', userlogin);
  Future<Response> deleteUserLogin(int id) async =>
      await delete('userlogin/$id');
}
