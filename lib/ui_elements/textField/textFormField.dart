import 'package:flutter/material.dart';

class TextFormFieldItem extends StatefulWidget {
  final String labelText;
  // bool obscureText;
  // final String? errorText;
  // final bool needIcon;
  // final bool needBorder;
  // final TextEditingController controller;
  // final Function onChange;
  final TextInputType keyboardType;
  // final List<TextInputFormatter> textInputFormatter;
  TextFormFieldItem(
        {
        required this.labelText,
      //   this.needBorder = false,
      //   this.obscureText = false,
      //   this.needIcon = false,
      //   this.errorText = null,
        // required this.controller,
      //   Function? onChange,
      //   this.textInputFormatter = const [],
        this.keyboardType = TextInputType.text,
      }
      )
  // : onChange = onChange ?? (() {})
  ;

  @override
  TextFormFieldItemState createState() => TextFormFieldItemState();
}

class TextFormFieldItemState extends State<TextFormFieldItem> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // inputFormatters: widget.textInputFormatter,
      keyboardType: widget.keyboardType,
      // controller: widget.controller,
      // initialValue: '',
      onChanged: (val) {
        // widget.onChange();
        // widget.onChange() ?? null;
      },
      // validator: (input) {},
      style: const TextStyle(color: Color(0xff000000)),
      cursorColor: const Color(0xff003356),
      // obscureText: widget.obscureText,
      decoration: InputDecoration(
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE21A1A), width: 0.0),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff003356), width: 0.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff003356), width: 0.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff003356), width: 0.0),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE21A1A), width: 0.0),
        ),
        // errorText: widget.errorText,
        filled: true,
        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(12)),
        fillColor: Colors.white,
        labelStyle: const TextStyle(color: Color(0xff003356)),
        labelText: widget.labelText,
      ),
    );
  }
}
