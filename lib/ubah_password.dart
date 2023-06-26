import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UbahPassword extends StatelessWidget {
  const UbahPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passSatuController = TextEditingController();
    TextEditingController passDuaController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xffFEBB1B),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Text(
          'Ubah Password',
          style:
              GoogleFonts.poppins(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 29),
                InputBox(
                  isPassword: false,
                  hintText: 'Password Baru',
                  textController: passSatuController,
                ),
                SizedBox(
                  height: 16.h,
                ),
                InputBox(
                  isPassword: false,
                  hintText: 'Konfirmasi Password Baru',
                  textController: passDuaController,
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 55.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFEBB1B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: Text(
                      'Simpan',
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  final bool isPassword;
  final String hintText;
  final TextEditingController textController;

  const InputBox({
    Key? key,
    required this.isPassword,
    required this.hintText,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
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
                  color: const Color(0xff8391A1)),
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.eye_fill,
                        size: 22,
                      ))
                  : null),
        ),
      ),
    );
  }
}
