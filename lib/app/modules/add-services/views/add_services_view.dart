import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:projectnoodles/app/modules/widgets/textfield.dart';

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
                InputField(
                  controller: controller.serviceController,
                  validator: controller.allFieldsValidation,
                  hintText: 'Name of the service',
                  labelText: 'Service Name',
                ),
                InputField(
                  controller: controller.serviceController,
                  hintText: 'Duties',
                  validator: controller.allFieldsValidation,
                )
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: controller.formKey.currentState?.validate() != null
            ? Colors.grey
            : Colors.blue,
        child: controller.formKey.currentState?.validate() != null
            ? const Icon(Icons.done_rounded, size: 30)
            : Container(),
      ),
    );
  }
}
