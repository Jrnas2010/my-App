import 'package:flutter/material.dart';
import 'package:my_app/page/admin_page.dart';


class FlowButton extends StatelessWidget {
  const FlowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the screen for adding a new article
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AdminPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
