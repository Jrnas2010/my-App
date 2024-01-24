import 'package:flutter/material.dart';
import 'package:my_app/page/profile_page.dart';
import 'package:my_app/tabs/first_tab.dart';
import 'package:my_app/tabs/second_tab.dart';
import 'package:my_app/tabs/third_tab.dart';


class HomePage extends StatefulWidget {


  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // search controller
TextEditingController searchController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .background,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('W A L L'),
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Add your profile button logic here
                // For example, navigate to the user profile page
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ProfilePage()));
              },
            ),

          ],

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .secondaryContainer,
        ),


        body: const Column (
          children: [
            Column(

            ),
            TabBar(
              tabs: [
                Tab(
                    iconMargin: EdgeInsets.all(0),
                    icon: Icon(Icons.party_mode),
                    text: 'Events'
                ),
                Tab(
                  iconMargin: EdgeInsets.all(0),
                  icon: Icon(Icons.party_mode),
                  text: 'Activities',
                ),
                Tab(
                    iconMargin: EdgeInsets.all(0),
                    icon: Icon(Icons.favorite),
                    text: 'Favorites'
                ),
              ],
            ),
            Expanded(child: TabBarView(
                children: [
                  EventsTab(),

                  ActivitiesTab(),

                  FavoritesTab(),
                ]
            )
            )
          ],

        ),
      ),
    );
  }

}
