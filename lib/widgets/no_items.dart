import 'package:flutter/material.dart';

class NoItems extends StatelessWidget {
  final String imageUrl;
  final String description;

  const NoItems({
    super.key,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 150, 8, 8),
              child: Column(
                children: [
                  Text(description),
                  Image.network(
                    imageUrl,
                    height: 300,
                    width: 300,
                  ),
                ],
              ),
            ),
          );
  }
}
