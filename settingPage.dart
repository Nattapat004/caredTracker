import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:caredtracker/notificationPage.dart';
import 'package:caredtracker/notificationList.dart';
import 'package:flutter/material.dart';

void main() async {
  await AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'channelKey',
        channelName: 'channelName',
        channelDescription: 'channelDescription',
        channelGroupKey: 'group_key')
  ], channelGroups: [
    NotificationChannelGroup(
        channelGroupKey: 'group_key', channelGroupName: 'channelGroupName')
  ]);
  bool notificationAllowed =
      await AwesomeNotifications().isNotificationAllowed();
  if (!notificationAllowed) {
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 7, 165, 238)),
        useMaterial3: true,
      ),
      home: const SettingPage(),
    );
  }
}

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: notificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            notificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            notificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            notificationController.onActionReceivedMethod);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Image.asset(
          'assets/top.png',
          width: MediaQuery.of(context).size.width, // Adjust width if needed
          fit: BoxFit.cover, // Adjust fit if needed
        ),
      ),
      // Other widgets go below the image in the Stack
      Positioned(
          top: 200, // Adjust the top position to move the Column down
          left: 0,
          right: 0,
          child: Center(
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => notificationPage()));
                },
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person), // Add your desired icon
                        SizedBox(
                            width:
                                8), // Adjust the space between the icon and text
                        Text(
                          'การตั้งค่าโปรไฟล์',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(), // Expands to fill available space
                        Icon(Icons.arrow_forward), // End icon
                      ],
                    )),
                style: ButtonStyle(
                  maximumSize: MaterialStateProperty.all<Size>(const Size(
                      350, 70)), // Adjust the minimum size of the button
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 54, 154, 240)),
                  // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //     EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(
                          color: const Color.fromARGB(
                              255, 54, 154, 240)), // Set the border color here
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.language), // Add your desired icon
                        SizedBox(
                            width:
                                8), // Adjust the space between the icon and text
                        Text(
                          'เปลี่ยนภาษา',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(), // Expands to fill available space
                        Icon(Icons.arrow_forward), // End icon
                      ],
                    )),
                style: ButtonStyle(
                  maximumSize: MaterialStateProperty.all<Size>(const Size(
                      350, 70)), // Adjust the minimum size of the button
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 54, 154, 240)),
                  // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //     EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(
                          color: const Color.fromARGB(
                              255, 54, 154, 240)), // Set the border color here
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.privacy_tip), // Add your desired icon
                        SizedBox(
                            width:
                                8), // Adjust the space between the icon and text
                        Text(
                          'นโยบายความเป็นส่วนตัว',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(), // Expands to fill available space
                        Icon(Icons.arrow_forward), // End icon
                      ],
                    )),
                style: ButtonStyle(
                  maximumSize: MaterialStateProperty.all<Size>(const Size(
                      350, 70)), // Adjust the minimum size of the button
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 54, 154, 240)),
                  // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //     EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(
                          color: const Color.fromARGB(
                              255, 54, 154, 240)), // Set the border color here
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.policy), // Add your desired icon
                        SizedBox(
                            width:
                                8), // Adjust the space between the icon and text
                        Text(
                          'เงื่อนไขและข้อกำหนด',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(), // Expands to fill available space
                        Icon(Icons.arrow_forward), // End icon
                      ],
                    )),
                style: ButtonStyle(
                  maximumSize: MaterialStateProperty.all<Size>(const Size(
                      350, 70)), // Adjust the minimum size of the button
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 54, 154, 240)),
                  // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //     EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(
                          color: const Color.fromARGB(
                              255, 54, 154, 240)), // Set the border color here
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.info), // Add your desired icon
                        SizedBox(
                            width:
                                8), // Adjust the space between the icon and text
                        Text(
                          'เกี่ยวกับแอพพลิเคชัน',
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(), // Expands to fill available space
                        Icon(Icons.arrow_forward), // End icon
                      ],
                    )),
                style: ButtonStyle(
                  maximumSize: MaterialStateProperty.all<Size>(const Size(
                      350, 70)), // Adjust the minimum size of the button
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.all(16)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 54, 154, 240)),
                  // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //     EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(
                          color: const Color.fromARGB(
                              255, 54, 154, 240)), // Set the border color here
                    ),
                  ),
                ),
              )
            ],
          )))
    ]);
  }
}
