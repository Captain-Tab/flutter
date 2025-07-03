import 'package:flutter/material.dart';

class ThreadCard extends StatelessWidget {
  const ThreadCard({
    super.key,
    required this.title,
    required this.time,
    required this.onGoing,
    required this.threadAmount,
  });

  final String title;
  final String time;
  final bool onGoing;
  final int threadAmount;


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: const Color(0xFFAFBAD4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
            children: [
              Text(title),
              Text(time),
              Text(threadAmount.toString()),
            ],
          )),
        ),
    );
  }
}