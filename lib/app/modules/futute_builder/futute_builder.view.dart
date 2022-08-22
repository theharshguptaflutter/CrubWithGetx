import 'dart:convert';

import 'package:crud_getxcli/app/data/get_all_user.model.dart';
import 'package:crud_getxcli/app/utils/services/rest_apis.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'futute_builder.controller.dart';

class FututeBuilderView extends GetView<FututeBuilderController> {
  Rx<GetAllUser> gettAllUser = GetAllUser().obs;
  // Future getHttp() async {
  //   try {
  //     // var response =
  //     //     await Dio().get('https://crub-with-getx.herokuapp.com/get-all-user');
  //     // print(response);

  //     var dio = Dio();
  //    final response = await dio.get('https://crub-with-getx.herokuapp.com/get-all-user');
  //     var data = jsonDecode(response);
  //     //var pdfText = await json.decode(json.encode(response.data));

  //     gettAllUser.value = GetAllUser.fromJson(data);

  //     String? name = gettAllUser.value.alluser![1].name;
  //     print(name);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  allUser() async {
    // print("allUserData");
    var response = await API.getAllUser();

    if (response == null) {
    } else {
      print("SocialUser value");
      gettAllUser.value = GetAllUser.fromJson(jsonDecode(response));

      // String? name = gettAllUser.value.alluser![1].name;
      // print(name);
      // print(gettAllUser.value.alluser!.length);
      // return name;

      return gettAllUser.value.alluser;
      // print(gettAllUser.value.alluser![1].name);

      // print(homeSocialdata.socials.creatorName);

      //print(homeSocialdata.value.socials);
      // var theDataVariable = jsonDecode(responseBody);
      // print(homeSocialdata);
      //print(theDataVariable);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FututeBuilderView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      allUser();
                    },
                    child: Container(child: Center(child: Text("click me")))),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 450,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 450,
                    child: FutureBuilder(
                        future: allUser(),
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return Container(
                              child: Center(child: Text("loading")),
                            );
                          } else {
                            return ListView.builder(
                                itemCount: gettAllUser.value.alluser!.length,
                                itemBuilder: (context, i) {
                                  return ListTile(
                                    title: Text(gettAllUser
                                        .value.alluser![i].email
                                        .toString()),
                                    leading: Text(gettAllUser
                                        .value.alluser![i].email
                                        .toString()),
                                  );
                                });
                          }
                        }),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
