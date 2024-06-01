import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/logo2.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: const Icon(Icons.play_circle_outline,
                              color: Colors.white, size: 30),
                        ),
                        Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: const Icon(Icons.star_border,
                                color: Colors.white, size: 30)),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
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
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Step into tomorrow:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text('Exploring'),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                    'Computing\'s impact on the industries and the metaverse!'),
              ),
            ],
          )),
    );
  }
}
