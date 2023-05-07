import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class InputBox extends StatelessWidget {
  InputBox({
    Key? key,
    required this.isPassword,
    required this.hintText,
    required this.textController,
  }) : super(key: key);
  bool isPassword;
  String hintText;
  TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330.w,
        height: 55.h,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(15).r),
        child: Center(
          child: TextField(
            cursorHeight: 25.h,
            keyboardType: isPassword ? null : TextInputType.emailAddress,
            obscureText: (isPassword) ? true : false,
            style: GoogleFonts.poppins(fontSize: 18),
            controller: textController,
            cursorColor: Colors.blueGrey,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8391A1)),
                suffixIcon: isPassword
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.eye_fill,
                          size: 22,
                        ))
                    : null),
          ),
        ));
  }
}
