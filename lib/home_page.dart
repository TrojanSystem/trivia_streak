import 'package:flutter/material.dart';

import 'category_section.dart';
import 'header_screen.dart';
import 'home_screen_leader_board.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  late double _width, _height;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(105, 89, 223, 1),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              flex: 8,
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        HomeScreenLeaderBoard(width: _width, height: _height),
                         CategorySection(),
                      ],
                    ),
                    randomButton()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned randomButton() {
    return Positioned(
                    bottom: 0,
                    left: 30,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 25),
                      child: Container(
                        alignment: Alignment.center,
                        width: _width * 0.8,
                        height: _height * 0.1,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(105, 89, 223, 1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Center(
                          child: Text(
                            'Play now(Random Category)',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  );
  }
}
