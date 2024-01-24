import 'package:flutter/material.dart';
import 'package:my_app/JSON/event_table.dart';
import 'package:my_app/SQLite/event_posts_database_myapp.dart';
import 'package:my_app/component/admin_drawer.dart';
import 'package:my_app/page/event_post_page.dart';


class EventPage extends StatelessWidget {

  const EventPage({super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const AdminDrawer(),
        appBar: AppBar(
          title: const Text('Event Page'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),

        body: const Center(
          child: Text("Event List"),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () async {
             // Add your action here
          await Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => const AddEventPage()));

           },
            child: const Icon(Icons.add, color: Colors.black,),
         ),
       );
  }
}
