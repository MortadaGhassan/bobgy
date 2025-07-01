import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ChildDetailsCard extends StatelessWidget {
  final String name;
  final String state;
  final String location;
  final String imageUrl;
  final int age;

  const ChildDetailsCard({
    super.key,
    required this.name,
    required this.state,
    required this.location,
    required this.imageUrl,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onSecondary,
          width: 1.5,
        ),
      ),
      elevation: 0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    imageUrl,
                    width: 35,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "$state/",
                            style: TextStyle(
                              color: context.colorScheme.primary,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            HugeIcons.strokeRoundedLocation01,
                            color: Theme.of(context).primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Text(
                  "$age سنوات",
                  style: TextStyle(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
