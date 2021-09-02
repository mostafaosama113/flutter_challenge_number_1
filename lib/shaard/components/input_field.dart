import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hint;
  final IconData prefixIcon;
  bool isPass;
  InputField(this.hint, this.prefixIcon, {this.isPass = false});
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  FocusNode node = FocusNode();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    node.addListener(() {
      setState(() {});
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        obscureText: widget.isPass,
        controller: controller,
        style: TextStyle(
            color: node.hasFocus || controller.text != ''
                ? Color(0xFF4BA2FB)
                : Color(0xFFBEBEBE),
            fontWeight: node.hasFocus || controller.text != ''
                ? FontWeight.bold
                : FontWeight.normal),
        focusNode: node,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.prefixIcon,
            color: node.hasFocus || controller.text != ''
                ? Color(0xFF4BA2FB)
                : Color(0xFFBEBEBE),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          hintText: widget.hint,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: node.hasFocus || controller.text != ''
                  ? Color(0xFF4BA2FB)
                  : Colors.white,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF4BA2FB),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
