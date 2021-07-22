import 'package:flutter/material.dart';

//自定义渐变按钮
class GradientButton extends StatelessWidget {
  const GradientButton(
      {Key? key,
      this.colors,
      this.borderRadius,
      this.onTap,
      this.width,
      this.height,
      required this.child})
      : super(key: key);

  final List<Color>? colors;

  final BorderRadius? borderRadius;

  final GestureTapCallback? onTap;

  // 按钮宽高
  final double? width;
  final double? height;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Color> _colors =
        colors ?? [theme.primaryColor, theme.primaryColorDark];

    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _colors,
          ),
          borderRadius: borderRadius),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: _colors.last,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius,
          onTap: onTap,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: height, width: width),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
