import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/page/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), (){
      Get.to(const LoginPage());
        });
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
            //logo
        
        
            SizedBox(
              width: 250.0,
             height: 250.0,
             child: Image.asset('images/app_icon.png'),
            ),
        
        
             const  SizedBox(height: 30,),

               const Text(
                 " WELCOME TO ",
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 20,
                 ),
               ),

               const  SizedBox(height: 30,),
        
              //app name
        
            const Text(
                 " M E C ",
               style: TextStyle(
               color: Colors.grey,
               fontSize: 30,
                ),
              ),
        
            const Text(
                 " G A T H R E I N G ",
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 30,
                 ),
               ),
        
               ]
               )
        
        
        ),
      )


    );
     }
}
