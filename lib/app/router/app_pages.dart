import 'package:get/get.dart';
import 'package:random_basic/app/modules/root/views/root_view.dart';

import '../modules/root/bindings/root_binding.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.root;
  static final routes = [
    GetPage(
      name: '/',
      page: () => RootView(),
      bindings: [RootBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
    ),
  ];
}
