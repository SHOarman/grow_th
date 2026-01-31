import 'package:get/get.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    // Inject services and controllers here
    // Get.put(ApiService());
  }

  static void init() {
    DependencyInjection().dependencies();
  }
}
