import 'package:flutter/material.dart';


class ListDown extends StatefulWidget {
  const ListDown({super.key});

  @override
  State<ListDown> createState() => _ListDownState();

}

class _ListDownState extends State<ListDown> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(
          child: DropdownButton<String>(
            items: const [
              DropdownMenuItem<String>(
                value: 'item1',
                child: Text('Event'),
              ),
              DropdownMenuItem<String>(
                value: 'item2',
                child: Text('Activities'),
              ),
            ],
            onChanged: (String? value) {
              // Handle the selection

            },
            hint: const Text('Select Section'), // Optional hint text
            value: null, // Initial value (if any)
          ),
        ),
      ),
    );
  }
}
