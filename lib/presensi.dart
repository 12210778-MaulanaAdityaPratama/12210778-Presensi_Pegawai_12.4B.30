import 'package:absensi_pegawai/peta_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Presensi extends StatelessWidget {
  const Presensi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      appBar: AppBar(
        backgroundColor: const Color(0xffFEBB1B),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Text(
          'Presensi',
          style:
              GoogleFonts.poppins(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 20.r, 0, 0),
                width: 330.w,
                height: 120.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Row(
                  children: [
                    Image.asset('assets/avatar.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Syeh Ariansah',
                          style: GoogleFonts.roboto(
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '298301283921839',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff6a707c)),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Jabatan',
                          style: GoogleFonts.roboto(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff6a707c)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 330.w,
              height: 100.h,
              padding: EdgeInsets.fromLTRB(30.r, 0, 30.r, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Masuk',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfffebb1b)),
                      ),
                      Text(
                        '07.00',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Image.asset('assets/line2.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Istirahat',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfffebb1b)),
                      ),
                      Text(
                        '12.00',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Image.asset('assets/line2.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pulang',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfffebb1b)),
                      ),
                      Text(
                        '05.00',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20.r, 0, 0),
              padding: EdgeInsets.fromLTRB(20.r, 0, 20.r, 0),
              width: 330.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '07.00.00',
                    style: GoogleFonts.poppins(
                        fontSize: 31.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xfffebb1b)),
                  ),
                  FloatingActionButton(
                      backgroundColor: const Color(0xfffebb1b),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/plus.png',
                        fit: BoxFit.contain,
                      ))
                ],
              ),
            ),
            Container(
              width: 319.w,
              height: 319.h,
              margin: EdgeInsets.fromLTRB(0, 20.r, 0, 0),
              child: const PetaView(),
            )
          ],
        ),
      ),
    );
  }
}
