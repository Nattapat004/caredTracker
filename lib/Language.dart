import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button List Example'),
        ),
        body: Body(),
      ),
    );
  }
}

// ignore: must_be_immutable
class Body extends StatelessWidget {
  String lang = '';

  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      
      // Other widgets go below the image in the Stack
      Positioned(
          top: 200, // Adjust the top position to move the Column down
          left: 0,
          right: 0,
          child: Center(
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
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
                          'ไทย',
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
                          'English',
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