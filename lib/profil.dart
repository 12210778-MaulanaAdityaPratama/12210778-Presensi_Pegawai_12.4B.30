import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ubah_password.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

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
          'Profil',
          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              height: 155,
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 5,
                    color: Color(0xffFEBB1B),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/avatar.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(left: 80, top: 70),
                      child: Image.asset(
                        "assets/edit.png",
                        width: 40,
                        height: 40,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Inputan(teks: 'NIP'),
            const SizedBox(height: 15),
            const Inputan(teks: 'Nama Lengkap'),
            const SizedBox(height: 15),
            const SelectJender(),
            const Inputan(teks: 'jabatan'),
            const SizedBox(height: 15),
            const Inputan(teks: 'Alamat'),
            const SizedBox(height: 15),
            const Inputan(teks: 'No. Hp'),
            const SizedBox(height: 15),
            const Inputan(teks: 'Email'),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Konfirmasi'),
                        content:
                            const Text('Apakah anda ingin mengubah password?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Tidak',
                              style: TextStyle(color: Color(0xffFEBB1B)),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UbahPassword(),
                                ),
                              );
                            },
                            child: const Text(
                              'Iya',
                              style: TextStyle(color: Color(0xffFEBB1B)),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromARGB(255, 123, 123, 123), width: 1),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xffFEBB1B),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "********",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.all(15),
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
                  'Simpan',
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

class SelectJender extends StatefulWidget {
  const SelectJender({
    super.key,
  });

  @override
  State<SelectJender> createState() => _SelectJenderState();
}

class _SelectJenderState extends State<SelectJender> {
  late String? selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Jenis Kelamin',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xffFEBB1B),
            ),
          ),
          Row(
            children: [
              Radio(
                value: 'Laki-laki',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                activeColor: const Color(0xffFEBB1B),
              ),
              const Text('Laki-laki'),
              Radio(
                value: 'Perempuan',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                activeColor: const Color(0xffFEBB1B),
              ),
              const Text('Perempuan'),
            ],
          ),
        ],
      ),
    );
  }
}

class Inputan extends StatelessWidget {
  final String teks;

  const Inputan({
    required this.teks,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Theme(
        data: ThemeData(
          primaryColor:
              const Color(0xffFEBB1B), // Mengatur warna primer menjadi merah
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: teks,
            labelStyle: const TextStyle(color: Color(0xffFEBB1B)),
          ),
        ),
      ),
    );
  }
}
