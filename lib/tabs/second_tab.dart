import 'package:flutter/material.dart';

class ActivitiesTab extends StatelessWidget {
  const ActivitiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(
          child: Text(
            'Activities',
            style: TextStyle(fontSize: 40),
          )
      ),
    );
  }
}