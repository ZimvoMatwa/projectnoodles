import 'package:get/get.dart';

final Map<String, String> _enZA = {
  'addMember': 'Add Member',
  'bookMember': 'Book Member',
  'addServices': 'Add Services',
};

class AppTranlations extends Translations {
  @override

  // Supported langs
  Map<String, Map<String, String>> get keys => {'enZA': _enZA};
}

abstract class L {
  static String get addMember => 'addMember';
  static String get bookMember => 'bookMember';
  static String get addServices => 'addServices';
}
