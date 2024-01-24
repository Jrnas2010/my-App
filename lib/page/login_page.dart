import 'package:flutter/material.dart';
import 'package:my_app/JSON/users.dart';
import 'package:my_app/SQLite/database_myapp.dart';
import 'package:my_app/component/my_button.dart';
import 'package:my_app/component/my_text_field.dart';
import 'package:my_app/page/home_page.dart';
import 'package:my_app/page/password_reset_page.dart';
import 'package:my_app/page/register_page.dart';
import 'package:path/path.dart';


// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  const LoginPage({super.key,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controller
  final email = TextEditingController();
  final password = TextEditingController();
  final DatabaseMyApp dbHelper = DatabaseMyApp();

  bool isChecked = false;
  bool isLoginTrue = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        //Because we don't have account, we must create one to authenticate


                //logo
                SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Image.asset('images/app_icon.png'),
                ),

                const SizedBox(height: 15,),

                //app name

                const Text(
                  "M E C   G A T H R E I N G",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),),

                const SizedBox(height: 25,),

                //email text-field

                MyTextField(
                  controller: email,
                  icon: (Icons.mail),
                  hintText: 'Email',
                  obscureText: false,
                ),


                const SizedBox(height: 15,),

                // password text-field
                MyTextField(
                  controller: password,
                  icon: (Icons.key),
                  hintText: 'Password',
                  obscureText: true,

                ),

                const SizedBox(height: 5,),


                // forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ListTile(
                          horizontalTitleGap: 2,
                          title: const Text("Remember me"),
                          leading: Checkbox(
                            activeColor: Theme.of(context).colorScheme.primary,
                            value: isChecked,
                            onChanged: (value){
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                          ),
                        )
                      ]
                  ),
                ),

                const SizedBox(height: 20,),

                // login in button
                MyButton(
                  text: "Login",
                  press: () {

                )
                ]

                const SizedBox(height: 20,),

                // don't have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account?",
                      style: TextStyle(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .inversePrimary
                      ),
                    ),
                    TextButton(
                     onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute (
                               builder: (context)=> const RegisterPage()));
                     },
                      child:  const Text("  Register here",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      ),
                      )
                      ),
                  ],
                ),

                // Access denied message in case when your username and password is incorrect
                //By default we must hide it
                //When login is not true then display the message
                isLoginTrue? Text("email or password is incorrect",
                  style: TextStyle(color: Colors.red.shade900),
                ),




            )
        ),
      ),
    );

  }
}



