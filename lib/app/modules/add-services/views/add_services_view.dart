import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_services_controller.dart';

class AddServicesView extends GetView<AddServicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddServicesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddServicesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
