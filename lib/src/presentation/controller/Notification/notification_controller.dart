import 'package:get/get.dart';
import '../../screens/Notification/notification_page.dart';


/// Controller for switching between list/detail views
class NotificationController extends GetxController {
  final isDetailView = false.obs;
  final selectedPersonData = Rxn<PersonNotificationData>();

  void showDetail(PersonNotificationData data) {
    selectedPersonData.value = data;
    isDetailView.value = true;
  }

  void showList() {
    selectedPersonData.value = null;
    isDetailView.value = false;
  }
}
