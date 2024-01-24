import 'package:flutter/material.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: const Center(
          child: Text(
            'Favorites',
            style: TextStyle(fontSize: 40),
          )
      ),
    );
  }
}