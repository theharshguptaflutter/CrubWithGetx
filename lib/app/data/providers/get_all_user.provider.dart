import 'package:get/get.dart';

import '../get_all_user.model.dart';

class GetAllUserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return GetAllUser.fromJson(map);
      if (map is List)
        return map.map((item) => GetAllUser.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<GetAllUser?> getGetAllUser(int id) async {
    final response = await get('getalluser/$id');
    return response.body;
  }

  Future<Response<GetAllUser>> postGetAllUser(GetAllUser getalluser) async =>
      await post('getalluser', getalluser);
  Future<Response> deleteGetAllUser(int id) async =>
      await delete('getalluser/$id');
}
