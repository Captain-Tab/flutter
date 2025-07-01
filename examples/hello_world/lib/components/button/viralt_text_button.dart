import 'package:flutter/material.dart';

class ViraltTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final TestButtonSize size;
  final ButtonStyle? style; // 新增：允许自定义样式
  final Color? backgroundColor;

  const ViraltTextButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.size = TestButtonSize.medium,
    this.style, // 可选参数
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? _getDefaultStyle(context), // 使用自定义样式或默认样式
      child: Text(
        text,
        style: TextStyle(fontSize: _getFontSize(), color: Colors.black),
      ),
    );
  }

  ButtonStyle _getDefaultStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      padding: _getPadding(),
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          width: 2,
          color: Color(0xFFE6C0FF),

        ),
      ),
    );
  }

  EdgeInsetsGeometry _getPadding() {
    switch (size) {
      case TestButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
      case TestButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 10);
      case TestButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
      default:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 10);
    }
  }

  double _getFontSize() {
    switch (size) {
      case TestButtonSize.small:
        return 12;
      case TestButtonSize.medium:
        return 16;
      case TestButtonSize.large:
        return 20;
      default:
        return 16;
    }
  }
}

enum TestButtonSize { small, medium, large }