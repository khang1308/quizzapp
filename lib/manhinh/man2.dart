import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SC2 extends StatefulWidget {
  const SC2({super.key});

  @override
  State<SC2> createState() => _SC2State();
}

class _SC2State extends State<SC2> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 702,
              child: PageView(
                controller: _controller,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 29,
                              height: 16,
                              margin: EdgeInsets.only(right: 16),
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff78746D)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 115,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: 375,
                                height: 446,
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 375,
                                        height: 264,
                                        child: Image.asset(
                                            'images/Cool Kids Long Distance Relationship.png')),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      width: 341,
                                      height: 72,
                                      child: Center(
                                        child: Text(
                                          'Learn anytime \n and anywhere',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff3C3A36)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      width: 341,
                                      height: 64,
                                      child: Center(
                                        child: Text(
                                          'Quarantine is the perfect time to spend your \n day learning something new, from anywhere!',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff78746D)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 69,
                              ),
                              Container(
                                width: 311,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffE3562A)),
                                  child: Text('Next'),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/SC3');
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 29,
                              height: 16,
                              margin: const EdgeInsets.only(right: 16),
                              child: const Text(
                                'Skip',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff78746D)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 115,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: 375,
                                height: 446,
                                child: Column(
                                  children: [
                                    Container(
                                        width: 375,
                                        height: 264,
                                        child: Image.asset(
                                            'images/Cool Kids Staying Home.png')),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      width: 341,
                                      height: 72,
                                      child: const Center(
                                        child: Text(
                                          'Find a course\nfor you',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff3C3A36)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      width: 341,
                                      height: 64,
                                      child: const Center(
                                        child: Text(
                                          'Quarantine is the perfect time to spend your \n day learning something new, from anywhere!',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff78746D)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 69,
                              ),
                              Container(
                                width: 311,
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xffE3562A)),
                                  child: const Text('Next'),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/SC3');
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: WormEffect(
                  spacing: 8.0,
                  radius: 100.0,
                  dotWidth: 5.0,
                  dotHeight: 5.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue),
            ),
          ],
        ));
  }
}
