import 'package:flutter/material.dart';
import '../carousel/my_carousel.dart';
export 'my_layout.dart';

class MyLayout extends StatelessWidget {


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
                  child: GridView.count(
                      shrinkWrap: true,          // 内容不足时也保持合适高度
                      crossAxisCount: 2,
                      crossAxisSpacing: 20, // 水平间距
                      mainAxisSpacing: 10,  // 垂直间距
                      children: [
                        Container(
                          width: 170.91,
                          height: 129,
                          padding: const EdgeInsets.all(20),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFCDD2DE),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.08),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                    color: const Color(0xFF99AFE4),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  ),),
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start, // 水平方向左对齐

                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('APPLE', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Company', style: TextStyle(
                                          color: Colors.black.withValues(alpha: 0.50),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      )
                                      ,
                                      ],
                                  ),

                            ],
                          ),
                           Row(
                            children: [
                              Text('01/07/2025', style: TextStyle(
                              color: Colors.black.withValues(alpha: 0.55),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              ),),
                            ],
                           ),
                         ],
                        ),
                        ),
                        Container(
                          width: 170.91,
                          height: 139,
                          padding: const EdgeInsets.all(20),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFCDD2DE),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.08),
                            ),
                          ),
                         child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: ShapeDecoration(
                                    color: const Color(0xFF99AFE4),
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  ),),
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start, // 水平方向左对齐

                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('APPLE', style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Company', style: TextStyle(
                                          color: Colors.black.withValues(alpha: 0.50),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      )
                                      ,
                                      ],
                                  ),

                            ],
                          ),
                           Row(
                            children: [
                              Text('01/07/2025', style: TextStyle(
                              color: Colors.black.withValues(alpha: 0.55),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              ),),
                            ],
                           ),
                         ],
                        ),
                        ),
                      ],
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

