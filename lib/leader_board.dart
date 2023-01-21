import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  LeaderBoard({Key? key}) : super(key: key);
  late double _width, _height;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(105, 89, 223, 1),
        appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_outlined),
            ),
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: const Color.fromRGBO(105, 89, 223, 1),
            title: const Text(
              'Leaderboard',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            )),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 60),
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(77, 64, 169, 1),
                  ),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Center(
                          child: Text(
                            'Weekly',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue[500],
                        ),
                        child: const Center(
                          child: Text(
                            'All Time',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: const Color.fromRGBO(231, 229, 250, 1),
                  child: ListView.builder(
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10),
                      height: _height * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 40,
                            height: 40,
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/use.jpg',
                            ),
                            radius: 45,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Suretion',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                '124 points',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    itemCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
