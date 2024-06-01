import 'package:flutter/material.dart';

class RecentArticleWidget extends StatefulWidget {
  const RecentArticleWidget({super.key});

  @override
  State<RecentArticleWidget> createState() => _RecentArticleWidgetState();
}

class _RecentArticleWidgetState extends State<RecentArticleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/images/logo2.png',
                fit: BoxFit.cover,
                width: 180,
                height: double.infinity,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Technology'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Step into tomorrow:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const Text('Exploring Spatial'),
                  const Text('Computing\'s impact'),
                  const Text('On industries and'),
                  const Text('the metaverse!'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
