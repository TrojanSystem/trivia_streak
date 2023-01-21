import 'package:flutter/material.dart';

import 'header_screen.dart';

class HomeScreenLeaderBoard extends StatelessWidget {
  const HomeScreenLeaderBoard({
    Key? key,
    required double width,
    required double height,
  })  : _width = width,
        _height = height,
        super(key: key);

  final double _width;
  final double _height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(18.0, 18, 8, 8),
                child: Text(
                  'Top rank of the Week',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                width: _width * 0.9,
                height: _height * 0.12,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(105, 89, 223, 1),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      width: 40,
                      height: 40,
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/use.jpg',
                      ),
                      radius: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Suretion',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '124 points',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            top: 20,
            right: 10,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/crown.png',
              ),
              radius: 30,
            ),
          ),
        ],
      ),
    );
  }
}
