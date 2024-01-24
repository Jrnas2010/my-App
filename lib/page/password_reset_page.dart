import 'package:flutter/material.dart';
//import 'package:my_app/component/my_button.dart';
//import 'package:my_app/component/my_text_field.dart';

class PasswordResetPage extends StatefulWidget {


  const PasswordResetPage({super.key});

  @override
  State<PasswordResetPage> createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  // text controller
  final emailController = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
         leading: IconButton(
           icon: const Icon(Icons.arrow_back),
             onPressed: () {
          Navigator.of(context).pop();
        }
         ),
      backgroundColor: Theme.of(context).colorScheme.background,
    ),
          body: const Padding(
           padding:  EdgeInsets.all(16.0),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
            'Enter your email to reset your password',
             style: TextStyle(fontSize: 18),
             ),

              SizedBox(height: 16),

              //MyTextField(
            // controller: emailController,
            //  icon: (Icons.mail),
            //  hintText: 'Write your Register Email',
            // obscureText: false,
           // ),

              SizedBox(height: 16),

              //MyButton(text: 'Reset',
               //   press: (){

               //   },

              //)
    ]
    ),
    )
    );
  }
}
