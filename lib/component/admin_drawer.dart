import 'package:flutter/material.dart';
import 'package:my_app/page/activities_page.dart';
import 'package:my_app/page/admin_page.dart';
import 'package:my_app/page/event_page.dart';


class AdminDrawer extends StatefulWidget {
  const AdminDrawer({super.key});

  @override
  State<AdminDrawer> createState() => _AdminDrawerState();
}

class _AdminDrawerState extends State<AdminDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
             currentAccountPicture: CircleAvatar(
               child: ClipOval(child: Image.asset('images/app_icon.png')),
             ),
             accountName: const Text ('Admin') ,
             accountEmail: const Text ('admin@gmail.com'),
            decoration: const BoxDecoration(color: Colors.grey),
          ),
           ListTile(
            leading: const Icon(Icons.home),
            title: const Text('HOME'),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
             builder: (context) => const AdminPage(),
                )),
             ),
             ListTile(
              leading: const Icon(Icons.celebration),
               title: const Text('EVENT'),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const EventPage(),
                  )),

    ),
            ListTile(
              leading: const Icon(Icons.sports_handball_outlined),
              title: const Text('ACTIVITIES'),
             onTap: () => Navigator.of(context).pushReplacement(
                 MaterialPageRoute(
                   builder: (context) => const ActivitiesPage(),
                 )),

    ),

               const ListTile(
                leading: Icon(Icons.person),
                title: Text('Users'),

    ),

          const ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Log Out'),


          ),
    ],
    ),
    );
    }
  }
