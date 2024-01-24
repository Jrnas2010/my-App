import 'package:flutter/material.dart';
import 'package:my_app/component/admin_drawer.dart';


class AdminPage extends StatelessWidget {

  const AdminPage({super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const AdminDrawer(),
        appBar: AppBar(
          title: const Text('Admin', textAlign: TextAlign.center,),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),

        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
                child: Column(
                  children: [
                    Text('Home Page', style: TextStyle(fontSize: 50),

                    ),
                  ],
                        ),
              ),
        )
        );




  }
}
