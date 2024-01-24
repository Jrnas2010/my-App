import 'package:flutter/material.dart';
import 'package:my_app/JSON/users.dart';



class ProfilePage extends StatelessWidget {
  final Users? profile;
  const ProfilePage({super.key,
  this.profile
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: const SingleChildScrollView(
        child: SafeArea (
             child: Padding(
               padding: EdgeInsets.symmetric(
                   vertical: 30.0,
                    horizontal: 20.0,
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                    CircleAvatar(
                      radius: 77,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                           backgroundImage: AssetImage('images/app_icon.png'),
                    radius: 75,
                         ),
                         ),
                Text(profile!.usrName??""),
                Text(profile!.email??""),


                               SizedBox(height: 10,),

                      Text("",
                         style: TextStyle(
                         fontSize: 30,
                         color: Colors.redAccent,
                        ),),

                        Text("",
                           style: TextStyle(
                           fontSize: 15,
                           color: Colors.grey,
                           ),
                            ),
                          SizedBox(height: 30,),

                          ListTile(
                            leading: Icon(Icons.person,size: 30,),
                            subtitle: Text("Username"),
                             title: Text(profile!.usrName??""),
                            ),

                          ListTile(
                            leading: Icon(Icons.email,size: 30,),
                            subtitle: Text("Email"),
                            title: Text(profile!.email??""),
                            ),


             ]



                         ),
             ),
          ),

            )
    );
  }
}
