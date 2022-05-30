import 'package:flutter/material.dart';

class ButtonItem extends StatefulWidget {
  // final String labelText;
  final String text;
  final Function onPressed;
  final double width;
  final bool isValidate;
  // bool obscureText;
  // final String? errorText;
  // final bool needIcon;
  // final bool needBorder;
  // final TextEditingController controller;
  // final Function onChange;
  // final TextInputType keyboardType;
  // final List<TextInputFormatter> textInputFormatter;
  ButtonItem({
    required this.text,
    this.isValidate = true,
    required this.onPressed,
    required this.width,
    // required this.labelText,
    //   this.needBorder = false,
    //   this.obscureText = false,
    //   this.needIcon = false,
    //   this.errorText = null,
    // required this.controller,
    //   Function? onChange,
    //   this.textInputFormatter = const [],
    // this.keyboardType = TextInputType.text,
  })
  // : onChange = onChange ?? (() {})
  ;

  @override
  ButtonItemState createState() => ButtonItemState();
}

class ButtonItemState extends State<ButtonItem> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
            Size(widget.width, 10)),
      ),
      onPressed: widget.isValidate ? () => widget.onPressed : null
      
       ,
      child: Text(widget.text),
    );
  }
}
