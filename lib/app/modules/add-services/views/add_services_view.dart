import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_services_controller.dart';

class AddServicesView extends GetView<AddServicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(CupertinoIcons.arrow_left, color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
        child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.serviceController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: 'Name of the service',
                    labelText: 'Service Name',
                  ),
                  onEditingComplete: () => FocusScopeNode().nextFocus(),
                  textInputAction: TextInputAction.next,
                ),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: controller.formKey.currentState!.validate()
            ? Colors.grey
            : Colors.blue,
        child: controller.formKey.currentState!.validate()
            ? const Icon(Icons.done_rounded, size: 30)
            : Container(),
      ),
    );
  }
}
