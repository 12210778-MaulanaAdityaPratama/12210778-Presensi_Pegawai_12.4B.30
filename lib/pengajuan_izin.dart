import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PengajuanIzin extends StatelessWidget {
  const PengajuanIzin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFEBB1B),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Text(
          'Pengajuan Izin',
          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
        child: Column(
          children: [
            const TeksInput(hintText: 'Tanggal Mulai'),
            const SizedBox(height: 15),
            const TeksInput(hintText: 'Tanggal Selesai'),
            const SizedBox(height: 15),
            const TeksInput(hintText: 'Alasan'),
            const SizedBox(height: 15),
            const TeksInput(hintText: 'Pilih File'),
            const SizedBox(height: 45),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFEBB1B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Text(
                  'Ajukan',
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeksInput extends StatelessWidget {
  final String hintText;

  const TeksInput({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      decoration: BoxDecoration(
          color: const Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: TextField(
          cursorHeight: 25,
          style: GoogleFonts.poppins(fontSize: 18),
          // controller: textController,
          cursorColor: Colors.blueGrey,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: const Color(0xff8391A1),
            ),
          ),
        ),
      ),
    );
  }
}
