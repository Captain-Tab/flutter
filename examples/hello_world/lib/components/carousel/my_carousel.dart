import 'package:flutter/material.dart';

export 'my_carousel.dart';


class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final int _totalPages = 3;

  final List<String> _pages = ['assets/images/stats1.png', 'assets/images/stats2.png', 'assets/images/stats3.png'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onIndicatorTap(int index) {
      // 使用 PageController 切换到指定页面
  _pageController.animateToPage(
    index,
    duration: Duration(milliseconds: 300),  // 平滑动画
    curve: Curves.easeInOut,               // 缓动效果
  );

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: _pages.length,
          onPageChanged: _onPageChanged,
          itemBuilder: (context, index) {
            return _buildPage(_pages[index]);
          },
        ),

        // 底部居中的红色条
        Positioned(
          bottom: 20,           // ✅ 距离底部20像素
          left: 0,
          right: 0,
          child: Center(        // ✅ 水平居中
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_totalPages, (index) => _buildPageIndicator(index,_currentIndex)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPage(String imageurl) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Image.asset(
        imageurl,
        width: 100,
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildPageIndicator(int index,int currentIndex) {
    bool isActive = index == currentIndex;
    return GestureDetector(
      onTap: () {
        _onIndicatorTap(index);
      },
      child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    )
    );
  }
}
