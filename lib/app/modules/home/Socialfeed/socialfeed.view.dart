import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'socialfeed.controller.dart';

class SocialfeedView extends GetView<SocialfeedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SocialfeedView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SocialfeedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
