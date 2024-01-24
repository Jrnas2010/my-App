import 'package:flutter/material.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(
          child: Text(
            'Events',
            style: TextStyle(fontSize: 40),
          )
      ),
    );
  }
}