import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:policemonitoring/login/otp.dart';

class DetailPegawai extends StatefulWidget {
  @override
  _DetailPegawaiState createState() => _DetailPegawaiState();
}

class _DetailPegawaiState extends State<DetailPegawai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF30475E)),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Detail Pegawai",
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          )),
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Nama Pegawai",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Rahmad Farizan",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "NRP",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "711890156",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Jabatan",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "SATBinmas",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Satuan",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Polsek Kembangan",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Nomor handphone",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Color(0XFFF5F5F5),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 52,
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          child: Text(
                            "+62",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width - 110,
                        child: TextField(
                            maxLength: 11,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                counterText: "",
                                hintText: "Masukkan No Handphone Anda",
                                border: InputBorder.none)),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KodeOTP()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF30475E),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: 52,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Selanjutnya",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12)),
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Container(
                                padding: EdgeInsets.all(5),
                                color: Color(0xFF7692AE),
                                child: Icon(Icons.arrow_forward_ios,
                                    size: 13, color: Colors.white)))
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
