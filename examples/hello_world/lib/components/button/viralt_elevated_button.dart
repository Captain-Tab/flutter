import 'package:flutter/material.dart';

class ViraltElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonSize size;
  final ButtonStyle? style; // 新增：允许自定义样式
  final Widget? icon; // 新增：支持图标
  final Color? backgroundColor;

  const ViraltElevatedButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.size = ButtonSize.medium,
    this.style, // 可选参数
    this.icon,  // 可选参数
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? _getDefaultStyle(context), // 使用自定义样式或默认样式
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [ // 使用 Row 布局，将图标和文本放在同一行  mainAxisSize.min 表示最小化主轴大小，即只占用必要的空间
                icon!,
                const SizedBox(width: 8),
                Text(
                  text,
                  style: TextStyle(fontSize: _getFontSize()),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(fontSize: _getFontSize()),
            ),
    );
  }

  ButtonStyle _getDefaultStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      padding: _getPadding(),
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 2
    );
  }

  EdgeInsetsGeometry _getPadding() {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 16);
    }
  }

  double _getFontSize() {
    switch (size) {
      case ButtonSize.small:
        return 12;
      case ButtonSize.medium:
        return 16;
      case ButtonSize.large:
        return 20;
    }
  }
}

enum ButtonSize { small, medium, large }