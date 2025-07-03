import 'package:flutter/material.dart';
import 'package:hello_world/components/thread/thread_card.dart';
export 'my_layout1.dart';


class MyLayout1 extends StatelessWidget {
   List<MyThreadCard> threadCardList = [
    MyThreadCard(
      title: 'APPLE 合作标题(系统生成的标题)',
      time: '02/07/2025',
      onGoing: true,
      threadAmount: 21,
    ),
    MyThreadCard(
      title: 'GOOGLE 合作标题(系统生成的标题)',
      time: '01/07/2025',
      onGoing: false,
      threadAmount: 31,
    ),
     MyThreadCard(
      title: 'META 合作标题(系统生成的标题)',
      time: '03/07/2025',
      onGoing: false,
      threadAmount: 15,
    ),
    MyThreadCard(
      title: 'TWITTER 合作标题(系统生成的标题)',
      time: '04/07/2025',
      onGoing: true,
      threadAmount: 11,
    ),
     MyThreadCard(
      title: 'TWITTER1 合作标题(系统生成的标题)',
      time: '04/07/2025',
      onGoing: true,
      threadAmount: 21,
    ),
    MyThreadCard(
      title: 'TWITTER2 合作标题(系统生成的标题)',
      time: '04/07/2025',
      onGoing: true,
      threadAmount: 11,
    ),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.29,
                  decoration: ShapeDecoration(
                    color: Color(0xFF8990A1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,                    // 从背景区域内开始
                left: 0,
                right: 0,
                bottom: 0,
                child: ListView(
                    children: [
                      Text('合作列表',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(height: 23),
                      Column(
                        spacing: 16,
                        children: threadCardList.map((card) => ThreadCard(title: card.title, onGoing: card.onGoing, time: card.time, threadAmount: card.threadAmount)).toList(),
                      )

                    ],
                  ),
            ),
            ],
          ),
        ),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '首页',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '搜索',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '我的',
        ),
      ]),
    );
}
}


class MyThreadCard {
  MyThreadCard({
    required this.title,
    required this.time,
    required this.onGoing,
    required this.threadAmount,
  });
  final String title;
  final String time;
  final bool onGoing;
  final int threadAmount;
}