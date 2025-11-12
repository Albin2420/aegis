import 'package:get/get.dart';

class AssignedTaskViewController extends GetxController {
  final RxBool showTimer = false.obs;

  void enableTimer() => showTimer.value = true;
  void disableTimer() => showTimer.value = false;

  @override
  void onClose() {
    // Optionally, save the state here if needed
    super.onClose();
  }
}
