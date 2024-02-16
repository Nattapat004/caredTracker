import 'package:caredtracker/notification.dart';

class notificationManager {

  List<notification> notifications = [];
   void addNotification(String title, String body) {
    notification newNotification = notification(title, body);
    notifications.add(newNotification);
  }
}