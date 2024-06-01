import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SocialConnectWidget extends StatefulWidget {
  const SocialConnectWidget({super.key});

  @override
  State<SocialConnectWidget> createState() => _SocialConnectWidgetState();
}

class _SocialConnectWidgetState extends State<SocialConnectWidget> {
  final List<Map<String, String>> sliderItems = [
    {
      'image': 'assets/images/logo2.png',
      'title':
          'The Ultimate Guide To Simplifying Your Routine With Generative AI Automation!'
    },
    {
      'image': 'assets/images/logo2.png',
      'title':
          'The Ultimate Guide To Simplifying Your Routine With Generative AI Automation!'
    },
    {
      'image': 'assets/images/logo2.png',
      'title':
          'The Ultimate Guide To Simplifying Your Routine With Generative AI Automation!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Social Connect',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Stay updated with my latest posts',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'on your favourite platforms',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: sliderItems.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(20), // Circular radius
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Circular radius
                            child: Image.asset(
                              item['image']!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 20,
                            right: 20,
                            child: Container(
                              color: Colors.white.withOpacity(0.7),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                item['title']!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
