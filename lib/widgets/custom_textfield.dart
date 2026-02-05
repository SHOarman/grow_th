import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: Colors.white24),
            color: Colors.transparent,
          ),
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? _isObscured : false,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: Colors.white30),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 14.h,
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: Colors.white38,
                  size: 20.sp,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}