import 'package:flutter/material.dart';

export 'my_card.dart';


class MyCard extends StatelessWidget {
  // 定义组件参数（通常使用 final 确保不可变性）
  final String title;
  final String time;
  final VoidCallback? onPressed;
  final bool onGoing;

  // 构造函数（使用 required 标记必须参数）
  const MyCard({
    Key? key,
    required this.title,
    required this.time,
    this.onPressed,
    required this.onGoing, // 默认值示例
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
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

                            ],
                          ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(title, style: const TextStyle(
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
                          ],
                        ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(time, style: TextStyle(
                              color: Colors.black.withValues(alpha: 0.55),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              ),
                          ),
                        ],
                      ),
                      ],
                  ),
                )
              ],
        );
  }
}
