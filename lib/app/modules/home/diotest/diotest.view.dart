import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'diotest.controller.dart';

class DiotestView extends GetView<DiotestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiotestView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DiotestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
