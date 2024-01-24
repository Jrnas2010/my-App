import 'package:flutter/material.dart';
import 'package:my_app/component/admin_drawer.dart';
import 'package:my_app/page/activities_post_page.dart';


class ActivitiesPage extends StatelessWidget {

  const ActivitiesPage({super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const AdminDrawer(),
        appBar: AppBar(
          title: const Text('Activities Page'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),

        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Text('Activities Page', style: TextStyle(fontSize: 50),

                ),
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (context) => const AddActivitiesPage())
          );
        },
        child: const Icon(Icons.add, color: Colors.black,),
      ),
    );


  }
}
