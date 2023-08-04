import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SC3 extends StatefulWidget {
  const SC3({super.key});

  @override
  State<SC3> createState() => _SC3State();
}

class _SC3State extends State<SC3> {
  void check() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('isFirst', 'No' as List<String>);
  }

  final _totalDots = 3;
  int _currentPosition = 0;

  int _validPosition(int position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1;
    return position;
  }

  void _updatePosition(int position) {
    setState(() => _currentPosition = _validPosition(position));
  }

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
      activeColor: Colors.blue,
      size: Size.square(6.0),
      activeSize: Size(15.0, 6.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
                          child: Image.asset('images/Cool Kids High Tech.png')),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 341,
                        height: 72,
                        child: Center(
                          child: Text(
                            'Improve your skills',
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
                      Column(
                        children: [
                          DotsIndicator(
                            dotsCount: _totalDots,
                            position: _currentPosition,
                            axis: Axis.horizontal,
                            decorator: decorator,
                            onTap: (pos) {
                              setState(() => _currentPosition = pos);
                            },
                          ),
                        ],
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
                    child: Text(
                      'Let’s Start',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
