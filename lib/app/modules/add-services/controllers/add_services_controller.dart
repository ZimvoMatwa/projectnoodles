import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddServicesController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController serviceController = TextEditingController();

  String allFieldsValidation(String value) {
    return value.isEmpty ? 'missing text' : '';
  }
}
