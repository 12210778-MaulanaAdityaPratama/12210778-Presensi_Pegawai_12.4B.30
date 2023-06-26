import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';
import 'pengajuan_izin.dart';
import 'presensi.dart';
import 'profil.dart';
import 'riwayat.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 50,
            elevation: 0,
            backgroundColor: const Color(0xffFEBB1B),
            leading: Image.asset(
              "assets/dashIcon.png",
              width: 23,
              height: 23,
              // fit: BoxFit.cover,
            ),
            title: const Text(
              'Presensi Pegawai',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    "assets/logout.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/dash.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  color: Colors.transparent,
                  height: 250,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 20, 22, 10),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  "assets/avatar.png",
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Syeh Ariansah",
                                    style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "92837791273812738",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'Jabatan',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                              width: 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const SizedBox(height: 160),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Kehadiran',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffFEBB1B),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                height: 26,
                                width: 2.0,
                                color: const Color(0xffFEBB1B),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                children: [
                                  Text(
                                    'April',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    '2023',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Content1(
                                angka: '3',
                                colorAngka: Color(0xff24FF00),
                                teks: 'Hadir',
                                colorText: Colors.black,
                              ),
                              Content1(
                                angka: '1',
                                colorAngka: Color(0xffFF7A00),
                                teks: 'Terlambat',
                                colorText: Colors.black,
                              ),
                              Content1(
                                angka: '0',
                                colorAngka: Color(0xffFF0000),
                                teks: 'Tidak Hadir',
                                colorText: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(height: 17),
                          Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    '07.00',
                                    style: GoogleFonts.poppins(
                                      fontSize: 31,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff0094FF),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: FloatingActionButton(
                                      backgroundColor: const Color(0xfffebb1b),
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/plus.png',
                                        fit: BoxFit.contain,
                                      )),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          SizedBox(
                            height: 150,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Content2(
                                  image: 'assets/presensi.png',
                                  teks: 'Presensi',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Presensi(),
                                      ),
                                    );
                                  },
                                ),
                                Content2(
                                  image: 'assets/riwayat.png',
                                  teks: 'Riwayat',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Riwayat(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          SizedBox(
                            height: 150,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Content2(
                                  image: 'assets/izin.png',
                                  teks: 'Pengajuan Izin',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PengajuanIzin(),
                                      ),
                                    );
                                  },
                                ),
                                Content2(
                                  image: 'assets/profile.png',
                                  teks: 'Profil',
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Profil(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Content2 extends StatelessWidget {
  final String image;
  final String teks;
  final void Function()? onTap;

  const Content2({
    required this.image,
    required this.teks,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 130,
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              fit: BoxFit.contain,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 5),
            Text(
              teks,
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class Content1 extends StatelessWidget {
  final Color colorText;
  final Color colorAngka;
  final String angka;
  final String teks;

  const Content1({
    super.key,
    required this.angka,
    required this.colorText,
    required this.colorAngka,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Center(
              child: Text(
                angka,
                style: GoogleFonts.poppins(
                    fontSize: 31,
                    fontWeight: FontWeight.w400,
                    color: colorAngka),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                teks,
                style: GoogleFonts.poppins(
                    fontSize: 9, fontWeight: FontWeight.w400, color: colorText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
