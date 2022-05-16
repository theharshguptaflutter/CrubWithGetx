import 'package:crud_getxcli/app/utils/api_utils.dart';
import 'package:crud_getxcli/app/utils/services/rest_routes.dart';

class API {
  // static getAllSyncs() async => ApiUtils.getRequest(RestRoutes.getAllSyncs);
  // static getAllUser() async => ApiUtils.getRequest(RestRoutes.getAllUser);
  // static socialAllData() async => ApiUtils.getRequest(RestRoutes.socialAllData);
  // static rewardsAllData() async =>
  //     ApiUtils.getRequest(RestRoutes.rewardsAllData);
  // static eventsAllData() async => ApiUtils.getRequest(RestRoutes.eventsAllData);

  static regApi(name, number, email, gender, password, dobdata) async {
    return ApiUtils.postRequest(RestRoutes.createNewUser,
        // {
        //   "name": name, "phoneNo": phone, "email": email, "gender": gender
        // }
        {
          "name": name,
          "email": email,
          "password": password,
          "number": number,
          "gender": gender,
          "dob": dobdata
        });
  }

  static loginUserApi(email, password) async {
    return ApiUtils.postRequest(RestRoutes.loginUser, {
      "email": email,
      "password": password,
    });
  }
} //end Class API
