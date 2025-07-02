import 'package:algad_almushriq/theme/theme.dart';
import 'package:flutter/material.dart';

class ChildInfoCard extends StatelessWidget {
  final String name;
  final String state;
  final String location;
  final String imageUrl;
  final int age;
  final IconData icon;
  final VoidCallback onFirstButtonPressed;
  final VoidCallback onSecondButtonPressed;

  const ChildInfoCard({
    super.key,
    required this.name,
    required this.state,
    required this.location,
    required this.imageUrl,
    required this.age,
    required this.icon,
    required this.onFirstButtonPressed,
    required this.onSecondButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      textStyle: WidgetStateProperty.all(
        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: context.colorScheme.primary),
        ),
      ),
      fixedSize: WidgetStateProperty.all(Size(48, 38)),
      backgroundColor: WidgetStateProperty.all(context.colorScheme.primary),
      foregroundColor: WidgetStateProperty.all(Colors.white),
    );
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onSecondary,
          width: 1.5,
        ),
      ),
      elevation: 0,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(imageUrl),
                  //  backgroundImage:NetworkImage(imageUrl) to be used with the api
                ),

                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              name,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                      Text(state, style: const TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Icon(
                            icon,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: style.copyWith(
                              elevation: WidgetStatePropertyAll(0),
                              backgroundColor: WidgetStateProperty.all(
                                context.colorScheme.onPrimary,
                              ),
                              foregroundColor: WidgetStateProperty.all(
                                context.colorScheme.primary,
                              ),
                            ),
                            onPressed: onFirstButtonPressed,
                            child: const Text("تفاصيل"),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            style: style.copyWith(
                              elevation: WidgetStatePropertyAll(0),
                              backgroundColor: WidgetStateProperty.all(
                                context.colorScheme.primary,
                              ),
                              foregroundColor: WidgetStateProperty.all(
                                context.colorScheme.onPrimary,
                              ),
                            ),
                            onPressed: onSecondButtonPressed,
                            child: const Text("قبول"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "$age سنوات",
                style: TextStyle(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
