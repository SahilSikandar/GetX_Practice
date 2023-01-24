import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // final lightTheme = Get.changeTheme(ThemeData.light());

  // final darkTheme = Get.changeTheme(ThemeData.light());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Practice"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("GETX POPUP"),
                subtitle: Text("Delete Files"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete",
                    contentPadding: EdgeInsets.only(top: 20),
                    titlePadding: EdgeInsets.all(50),
                    middleText: "Are sure you want to delete?",
                  );
                },
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("GETX BottomSheet"),
                    subtitle: Text("Dark and Light mode"),
                    onTap: () {
                      build(context);
                      Get.bottomSheet(
                          //backgroundColor: Colors.white,
                          //barrierColor: Colors.amber,

                          //ignoreSafeArea: true,
                          Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        child: Column(children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            subtitle: Text(
                              "Light mode",
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.dark_mode),
                            subtitle: Text("dark mode"),
                            onTap: () => Get.changeTheme(ThemeData.dark()),
                          ),
                        ]),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Get.snackbar("Hello message", "Hello Sahil",
              //animationDuration: kThemeAnimationDuration
              snackPosition: SnackPosition.BOTTOM);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
