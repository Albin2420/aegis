import 'package:get/get.dart';

class CompletedTaskController extends GetxController {
  final RxMap<int, bool> expandedStates = <int, bool>{}.obs;

  void toggleExpansion(int index) {
    expandedStates[index] = !(expandedStates[index] ?? false);
  }

  bool isExpanded(int index) {
    return expandedStates[index] ?? false;
  }
}