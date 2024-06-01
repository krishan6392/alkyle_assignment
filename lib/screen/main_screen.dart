import 'package:alkye_assignment/widget/recent_articles.dart';
import 'package:alkye_assignment/widget/slider.dart';
import 'package:alkye_assignment/widget/social_connect_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 60,
                      width: 60,
                    ),
                    const SizedBox(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          // fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                height: 320,
                child: PageView(
                  controller: _pageController,
                  children: const [
                    SliderPage(),
                    SliderPage(),
                    SliderPage(),
                    SliderPage(),
                    SliderPage(),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              DotsIndicator(
                dotsCount: 5,
                currentPage: _currentPage,
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Recent Articles',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const RecentArticleWidget(),
              const SizedBox(
                height: 10,
              ),
              const RecentArticleWidget(),
              const SizedBox(
                height: 10,
              ),
              const RecentArticleWidget(),
              const SizedBox(
                height: 10,
              ),
              const RecentArticleWidget(),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            WidgetStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {},
                      child: const Text('View All')),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialConnectWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int currentPage;

  const DotsIndicator({
    Key? key,
    required this.dotsCount,
    required this.currentPage,
  }) : super(key: key);

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 12.0 : 8.0,
      height: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dotsCount, (index) {
        return _buildDot(index == currentPage);
      }),
    );
  }
}
