import 'package:flutter/material.dart';
import '../carousel/my_carousel.dart';
import '../card/my_card.dart';
export 'my_layout.dart';


class MyCardData {
  final String title;
  final bool onGoing;

  MyCardData({required this.title, required this.onGoing});
}


class MyLayout extends StatelessWidget {
   List<MyCarouselData> cardList = [
    MyCarouselData(
      title: 'APPLE',
      time: '02/07/2025',
      onGoing: true,
    ),
    MyCarouselData(
      title: 'GOOGLE',
      time: '01/07/2025',
      onGoing: false,
    ),
     MyCarouselData(
      title: 'META',
      time: '03/07/2025',
      onGoing: false,
    ),
    MyCarouselData(
      title: 'TWITTER',
      time: '04/07/2025',
      onGoing: false,
    ),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.42,
                    decoration: const BoxDecoration(
                    color: Color(0xFF878E9F),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: MyCarousel(),
                  ),
                ]
              ),
              SizedBox(height: 31),
              Container(
                // padding: EdgeInsets.only(left: 16),
                height: MediaQuery.of(context).size.height * 0.07,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFF878E9F),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.all( MediaQuery.of(context).size.width * 0.04),
                          child: const Text('Hello World1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  // padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.92,
                  // alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),

                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text(
                                  '222',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF8990A1),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                SizedBox(height:7),

                                Text('New Invite',
                                style: TextStyle(
                                  color: Color(0xFF8990A1),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text('3',
                                style: TextStyle(
                                  color: Color(0xFF8990A1),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),),
                                SizedBox(height:7),
                                Text('Ongoing',
                                style: TextStyle(
                                  color: Color(0xFF8990A1),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text('30',
                                style: TextStyle(
                                  color: const Color(0xFF8990A1),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),),
                                SizedBox(height:7),
                                Text('Finish',
                                style: TextStyle(
                                  color: const Color(0xFF8990A1),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text("100",
                                style: TextStyle(
                                  color: const Color(0xFF8990A1),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                ),),
                                SizedBox(height:7),
                                Text("Cancel",
                                style: TextStyle(
                                  color: const Color(0xFF8990A1),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),),
                              ],),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 39),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.92,
                  child: const Text('New Invites',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  )),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  padding: const EdgeInsets.all(15),  // 外边距15px
                  child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,      // 行间距15px
                      crossAxisSpacing: 15,     // 列间距15px
                      childAspectRatio: 1.25,   // 调整宽高比
                      children: cardList.map((card) => MyCard(title: card.title, onGoing: card.onGoing, time: card.time)).toList(),
                    ),
                ),
              ),
          ],
        ),
      ),
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


class MyCarouselData {
  MyCarouselData({
    required this.title,
    required this.time,
    required this.onGoing,
  });
  final String title;
  final String time;
  final bool onGoing;
}