import 'package:absensi_pegawai/presensi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

import 'inputbox.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nipController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/loginBg.png',
                fit: BoxFit.fill,
              ),
            ),
            InputBox(
                isPassword: false,
                hintText: 'NIP',
                textController: nipController),
            SizedBox(
              height: 16.h,
            ),
            InputBox(
                isPassword: true,
                hintText: 'Password',
                textController: passController),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              label: 'Masuk',
              fun: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Presensi(),
                    ));
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Lupa Password?',
                  style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFEBB1B)),
                ))
          ],
        ),
      ),
    );
  }
}

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

class CustomBox extends StatelessWidget {
  CustomBox(
      {Key? key, required this.angka, required this.color, required this.label})
      : super(key: key);
  String angka, label;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 70.h,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(0, 1))
      ], color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              angka,
              style: GoogleFonts.poppins(
                  fontSize: 31.sp, fontWeight: FontWeight.w500, color: color),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              label,
              style: GoogleFonts.poppins(fontSize: 8.sp, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.fun, required this.label}) : super(key: key);

  void Function()? fun;
  String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.w,
      height: 55.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFEBB1B),
            shape: const StadiumBorder()),
        onPressed: fun,
        child: Text(
          label,
          style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
    );
  }
}
