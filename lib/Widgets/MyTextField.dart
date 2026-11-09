import 'package:flutter/material.dart';
import 'package:snapshop/Config/Colors.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    this.size = 10,
    this.labelName = "TextField",
    this.hintText = "Type here",
    this.hideText = false,
    this.labelTextColor = black,
    this.readOnly = false,
    this.controller,
  });

  final double size;
  final String labelName;
  final String hintText;
  final bool hideText;
  final Color labelTextColor;
  final bool readOnly;
  final TextEditingController? controller;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.size),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.labelName,
                style: TextStyle(
                  fontFamily: "Outfit",
                  fontSize: 15,
                  color: widget.labelTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          TextField(
            readOnly: widget.readOnly,
            obscureText: widget.hideText ? _obscured : false,
            controller: widget.controller,
            style: const TextStyle(
              color: midBlack,
              fontSize: 16,
              fontFamily: "Outfit",
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: white,
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                fontFamily: "Outfit",
                fontWeight: FontWeight.w600,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              suffixIcon: widget.hideText
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _obscured = !_obscured;
                        });
                      },
                      icon: Icon(
                        _obscured
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
