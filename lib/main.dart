import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Bottom Sheet"),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text("Light Theme"),
                            onTap: () => {Get.changeTheme(ThemeData.light())},
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text("Dark Theme"),
                            onTap: () => {Get.changeTheme(ThemeData.dark())},
                          ),
                        ],
                      ),
                    ),
                    // barrierColor: Colors.green.shade100,
                    // backgroundColor: Colors.purpleAccent,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                        color: Colors.white,
                        style:  BorderStyle.solid,
                        width: 2.0,
                      )
                    ),
                    // enableDrag: false,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
