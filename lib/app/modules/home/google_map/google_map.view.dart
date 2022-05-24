import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'google_map.controller.dart';

class GoogleMapView extends GetView<GoogleMapController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoogleMapView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          controller.title.value,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
