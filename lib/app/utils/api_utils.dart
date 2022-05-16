import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

//import 'package:vibrancy/app/utils/theme/snackbars.dart';

class ApiUtils {
//----------these are utlility methods for the api calls
  static getRequest(String url) async {
    final response = await http.get(Uri.parse(url));
    return checkResponse(response);
  }

  static postRequest(String url, Map<String, String> bodyObject) async {
    final response = await http.post(Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Charset': 'utf-8'
        },
        body: jsonEncode(bodyObject));
    await checkResponse(response);
    return response;
  }

  static checkResponse(response) async {
    if (response.statusCode == 200 || response.statusCode == 201) {
      // TODO:show success snackbar and return response
      // these should be different methods
      return response.body;
    } else {
      //TODO:show error snackbar and return null
      return null;
    }
  }
}
