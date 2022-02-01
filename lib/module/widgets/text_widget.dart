import 'package:flutter/material.dart';

class CustomTextWidget extends StatefulWidget {
  final String text;
  final TextStyle? styles;
  const CustomTextWidget({Key? key, required this.text, this.styles}) : super(key: key);

  @override
  _CustomTextWidgetState createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: widget.styles,
    );
  }
}
