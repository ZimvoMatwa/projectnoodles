import 'package:get/get.dart';

import '../modules/add-services/bindings/add_services_binding.dart';
import '../modules/add-services/views/add_services_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_SERVICES,
      page: () => AddServicesView(),
      binding: AddServicesBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_SERVICES,
          page: () => AddServicesView(),
          binding: AddServicesBinding(),
        ),
      ],
    ),
  ];
}
