import 'package:flutter/material.dart';
import 'package:my_app/JSON/users.dart';
import 'package:my_app/SQLite/database_myapp.dart';
import 'package:my_app/component/my_button.dart';
import 'package:my_app/component/my_text_field.dart';
import 'package:my_app/page/login_page.dart';
import 'package:path/path.dart';






// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {


  const RegisterPage({super.key,});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controller
  final usrName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  final DatabaseMyApp dbHelper = DatabaseMyApp();


  

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
                  ),
                ),


                const SizedBox(height: 20,),

                //email text-field

                MyTextField(
                  controller: usrName,
                  icon: (Icons.person),
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10,),

                //email text-field

                MyTextField(
                  controller: email,
                  icon: (Icons.mail),
                  hintText: 'Email',
                  obscureText: false,
                ),


                const SizedBox(height: 10,),

                // password text-field
                MyTextField(
                  controller: password,
                  icon: (Icons.lock),
                  hintText: 'Password',
                  obscureText: true,

                ),


                const SizedBox(height: 10,),

                // password text-field
                MyTextField(
                  controller: confirmpassword,
                  icon: (Icons.lock),
                  hintText: 'Confirm Password',
                  obscureText: true,

                ),


                const SizedBox(height: 20,),

                // sign in button
                // sign in button
                MyButton(
                    text: " Register ",
                    press: () {
                      onPressed: () async {
                        // Implement signup logic and database storage
                        Map<String, dynamic> users = {
                          'username': usrName.text,
                          'email': email.text,
                          'password': password.text,
                        };
                        await dbHelper.insertUser(users);

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );

                        child:
                        const Text('Sign Up');
                      };
                    }
                ),


                const SizedBox(height: 20,),

                // don't have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You have an account?",
                      style: TextStyle(
                          color: Theme
                              .of(context)
                              .colorScheme
                              .inversePrimary
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text("  Click here",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        )
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
