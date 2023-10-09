// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "SnackBar",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        "SnackBar Title", "This will be the SnackBar message",
                        snackPosition: SnackPosition.BOTTOM,
                        // titleText: Text("Another Title"),
                        // messageText: Text(
                        //   "Another Message",
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        colorText: Colors.red,
                        backgroundColor: Colors.black,
                        borderRadius: 30,
                        margin: const EdgeInsets.all(20),
                        // maxWidth: 100,
                        animationDuration: const Duration(milliseconds: 3000),
                        backgroundGradient: const LinearGradient(
                            colors: [Colors.red, Colors.yellow]),
                        borderColor: Colors.purple,
                        borderWidth: 4,
                        boxShadows: [
                          const BoxShadow(
                              color: Colors.yellow,
                              offset: Offset(30, 50),
                              spreadRadius: 20,
                              blurRadius: 8)
                        ],
                        isDismissible: true,
                        // dismissDirection: SnackDismissDirection.HORIZONTAL,
                        forwardAnimationCurve: Curves.bounceInOut,
                        duration: const Duration(milliseconds: 8000),
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        shouldIconPulse: false,
                        leftBarIndicatorColor: Colors.white,
                        mainButton: TextButton(
                          onPressed: () {
                            print("Retry Clicked");
                          },
                          child:const Text("Retry"),
                        ),
                      onTap: (val){
                          print("SnackBar Clicked");
                      },
                      overlayBlur: 5,
                      // overlayColor: Colors.white,
                      // padding: const EdgeInsets.all(50),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.orange,
                      progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      reverseAnimationCurve: Curves.bounceInOut,
                      snackbarStatus: (val){
                          print(val);
                        },
                      userInputForm: const Form(
                          child:Row(
                            children: [
                              Expanded(child: TextField()),
                            ],
                          ),
                      ),
                    );

                  },
                  child: const Text("Show SnackBar"))
            ],
          ),
        ),
      ),
    );
  }
}
