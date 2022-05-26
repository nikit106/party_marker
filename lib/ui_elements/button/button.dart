import 'package:flutter/material.dart';

class ButtonItem extends StatefulWidget {
  // final String labelText;
  final String text;
  final Function onPressed;
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
    required this.onPressed,
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
            Size(MediaQuery.of(context).size.width, 10)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (final Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.blueGrey;
          }
          return const Color(0xffFA3855);
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (final Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.white;
          }
          return const Color(0xFFffffff);
        }),
      ),
      onPressed: () => print('1'),
      child: Text(widget.text),
    );
//     OutlineButton(
//     child: new Text("Button text"),
//     onPressed: null,
//     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
// ),
  }
}
